import datetime
import simplejson
import string
import os
from stat import *

# Todo remove n^2 (easy fix), simplify

class Template:

    abstract_header = ''
    abstract_variables = ''
    abstract_variable = ''
    abstract_properties = ''
    abstract_property = ''
    abstract_footer = ''

    def load(self, path):
        f = open(path + '/' + 'abstract-header.as')
        self.abstract_header = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-import.as')
        self.abstract_import = string.Template(f.read())
        f.close()

        f = open(path + '/' + 'abstract-variables.as')
        self.abstract_variables = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-variable.as')
        self.abstract_variable = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-properties.as')
        self.abstract_properties = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-property.as')
        self.abstract_property = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-object-properties.as')
        self.abstract_object_properties = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-object-property.as')
        self.abstract_object_property = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-object-property-default.as')
        self.abstract_object_property_default = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-object-initial.as')
        self.abstract_object_initial = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-object-initials.as')
        self.abstract_object_initials = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-footer.as')
        self.abstract_footer = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-bindable.as')
        self.abstract_bindable = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-update.as')
        self.abstract_update = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'element.as')
        self.elem = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'asset.xml')
        self.asset_tpl = string.Template(f.read())
        f.close()
        
        f = open(path + '/' + 'abstract-load-asset.as')
        self.load_asset_tpl = string.Template(f.read())
        f.close()
	
	f = open(path + '/' + 'abstract-asset.as')
        self.decl_asset_tpl = string.Template(f.read())
        f.close()

    def abstractHeader(self, classname, namespace, imports, baseclass, timestamp, initials, license, asset):
        return self.abstract_header.substitute({'classname': classname, 'namespace': namespace, 'imports': imports, 'baseclass': baseclass, 'timestamp': timestamp, 'initials': initials, 'license': license, 'asset': asset})
    
    def abstractImport(self, imp):
        return self.abstract_import.substitute({'import': imp})
    
    def abstractVariables(self, variables):
        return self.abstract_variables.substitute({'variables': variables})
    
    def abstractVariable(self, name, kind, default):
        return self.abstract_variable.substitute({'name': name, 'type': kind, 'default': default})
    
    def abstractProperties(self, properties):
        return self.abstract_properties.substitute({'properties': properties})
    
    def abstractProperty(self, namespace, name, kind, desc, default, bindable, update, initials):
        return self.abstract_property.substitute({'namespace': namespace, 'name': name, 'type': kind, 'desc': desc, 'default': default, 'bindable': bindable, 'update': update, 'initials': initials})
    
    def abstractObjectProperties(self, object_properties):
        return self.abstract_object_properties.substitute({'object_properties': object_properties})
    
    def abstractObjectProperty(self, namespace, obj, prop, name, kind, desc, default, bindable, update, initials):
        return self.abstract_object_property.substitute({'namespace': namespace, 'object': obj, 'property': prop, 'name': name, 'type': kind, 'desc': desc, 'default': default, 'bindable': bindable, 'update': update, 'initials': initials})

    def abstractObjectPropertyDefault(self, obj, prop, name):
        return self.abstract_object_property_default.substitute({'object': obj, 'property': prop, 'name': name})
    
    def abstractObjectInitial(self, prop, name):
        return self.abstract_object_initial.substitute({'property': prop, 'name': name})
    
    def abstractObjectInitials(self, initials):
        return self.abstract_object_initials.substitute({'initials': initials})
    
    def abstractFooter(self):
        return self.abstract_footer.substitute({})
    
    def abstractBindable(self, name):
        return self.abstract_bindable.substitute({'name': name})
    
    def abstractUpdate(self):
        return self.abstract_update.substitute({})
    
    def element(self, classname, namespace, abstract, timestamp, license):
        return self.elem.substitute({'classname': classname, 'namespace': namespace, 'abstract': abstract, 'timestamp': timestamp, 'license': license})
	
    def asset(self, element, license):
        return self.asset_tpl.substitute({'element': element, 'license': license})
	
    def abstractLoadAsset(self):
        return self.load_asset_tpl.substitute()

    def abstractAsset(self, asset):
        return self.decl_asset_tpl.substitute({'asset': asset})
	
class Codegen:

    def __init__(self, template):
        self.template = template
    
    def gen(self, base_dir, element, force, licenses_dir, assets_dir, include_assets_dir):
        directory = base_dir + '/' + self.namespaceDir(element['namespace']) + '/'

        if not os.path.exists(directory):
            os.makedirs(directory)

        filename = directory + 'Abstract' + element['classname'] + '.as'
        up_to_date = False

        if not force and os.path.isfile(filename):
            if os.path.getmtime(filename) >= element['mtime']:
                up_to_date = True
				
        license = ''
                
        if element.has_key('license'):
            f = open(licenses_dir + '/' + element['license'])
            license = f.read()
            f.close()
        else:
            f = open(licenses_dir + '/esoteric.as')
            license = f.read()
            f.close()

        if up_to_date:
            print filename + ' is up to date, skipping.'
        else:
            f = open(filename, 'w')
            f.write(self.abstract(element, license, include_assets_dir))
            f.close()
            print filename + ' was generated.'
        
        filename = directory + element['classname'] + '.as'
        
        if os.path.isfile(filename):
            print filename + ' already exists, skipping.'
        else:
            f = open(filename, 'w')
            f.write(self.element(element, license))
            f.close()
            print filename + ' was generated.'
	
        if element.has_key('asset'):
            directory = assets_dir + '/' + self.namespaceDir(element['namespace']) + '/'

            if not os.path.exists(directory):
                os.makedirs(directory)

            filename = directory + element['asset'] + '.xml'
            
            if os.path.isfile(filename):
                print filename + ' already exists, skipping.'
            else:
                f = open(filename, 'w')
                f.write(self.asset(element, license))
                f.close()
                print filename + ' was generated.'

    def abstract(self, element, license, assets_dir):
        return self.abstractHeader(element, license) + self.abstractAsset(element, assets_dir) + self.abstractVariables(element) + self.abstractProperties(element) + self.abstractObjectProperties(element) + self.abstractFooter(element)

    def abstractHeader(self, element, license):
        imps = ''
        def_initials = ''
        asset = ''

        # n^2 =(
        if element.has_key('objectProperties'):
            for c in element['objectProperties']:
                def_val = False
                prop_name = element['objectProperties'][c]['object']
                if prop_name in element['properties'] and 'default' in element['properties'][prop_name] and 'default' in element['objectProperties'][c]:
                    def_initials += self.template.abstractObjectPropertyDefault(prop_name, element['objectProperties'][c]['property'], c)
                elif prop_name in element['objectProperties'] and 'default' in element['objectProperties'][prop_name] and 'default' in element['objectProperties'][c]:
                    def_initials += self.template.abstractObjectPropertyDefault(prop_name, element['objectProperties'][c]['property'], c)

        if element.has_key('imports'):
            for c in element['imports']:
                imps += self.template.abstractImport(c)
		
        if element.has_key('asset') and element['asset']:
            imps += self.template.abstractImport('com.esoteric.core.XMLParser')
            imps += self.template.abstractImport('com.esoteric.events.LoadEvent')
            imps += self.template.abstractImport('flash.utils.ByteArray')
            asset = self.template.abstractLoadAsset();
            
        d = datetime.datetime.utcnow();
        timestamp = d.date().isoformat() + ' ' + d.time().isoformat() + ' UTC'
        
        return self.template.abstractHeader('Abstract' + element['classname'], element['namespace'], imps, element['baseclass'], timestamp, def_initials, license, asset)
        
    def abstractAsset(self, element, assets_dir):
        if element.has_key('asset') and element['asset']:
            asset = assets_dir + '/' + self.namespaceDir(element['namespace']) + '/' + element['asset'] + '.xml'
            return self.template.abstractAsset(asset)
        
        return ''

    def abstractVariables(self, element):
        variables = ''

        if element.has_key('properties'):
            for c in element['properties']:
                variable = element['properties'][c]
                variable['name'] = c
                variables += self.abstractVariable(variable)

        if element.has_key('objectProperties'):
            for c in element['objectProperties']:
                variable = element['objectProperties'][c]
                variable['name'] = c
                variables += self.abstractVariable(variable)
        
        return self.template.abstractVariables(variables)

    def abstractVariable(self, variable):
        def_val = 'null'
        
        if variable.has_key('default'):
            def_val = variable['default']
            
        return self.template.abstractVariable(variable['name'], variable['type'], def_val)

    def abstractProperties(self, element):
        props = ''

        if element.has_key('properties'):
            for c in element['properties']:
                prop = element['properties'][c]
                prop['name'] = c
                props += self.abstractProperty(prop, element)

        return self.template.abstractProperties(props)

    def abstractProperty(self, prop, element):
        def_val = 'null'
        def_ns = 'public'
        def_bindable = ''
        def_update = ''
        def_initials = ''

        # n^2 =(
        if element.has_key('objectProperties'):
            s = ''
            for c in element['objectProperties']:
                if element['objectProperties'][c]['object'] == prop['name']:
                    s += self.template.abstractObjectInitial(element['objectProperties'][c]['property'], c)
            if len(s):
                def_initials = self.template.abstractObjectInitials(s)

        if not prop.has_key('bindable') or prop['bindable']:
            def_bindable = self.template.abstractBindable(prop['name'])
            
        if not prop.has_key('update') or prop['update']:
            def_update = self.template.abstractUpdate()
        
        if prop.has_key('default'):
            def_val = prop['default']
            
        if prop.has_key('namespace'):
            def_ns = prop['namespace']
            
        return self.template.abstractProperty(def_ns, prop['name'], prop['type'], prop['desc'], def_val, def_bindable, def_update, def_initials)

    def abstractObjectProperties(self, element):
        object_props = ''

        if element.has_key('objectProperties'):
            for c in element['objectProperties']:
                obj_prop = element['objectProperties'][c]
                obj_prop['name'] = c
                object_props += self.abstractObjectProperty(obj_prop, element)

        return self.template.abstractObjectProperties(object_props)

    def abstractObjectProperty(self, obj_prop, element):
        def_ns = 'public'
        def_bindable = ''
        def_update = ''
        def_val = 'null'
        def_initials = ''
        
        # n^2 =(
        if element.has_key('objectProperties'):
            s = ''
            for c in element['objectProperties']:
                if element['objectProperties'][c]['object'] == obj_prop['name']:
                    s += self.template.abstractObjectInitial(element['objectProperties'][c]['property'], c)
            if len(s):
                def_initials = self.template.abstractObjectInitials(s)

        if not obj_prop.has_key('bindable') or obj_prop['bindable']:
            def_bindable = self.template.abstractBindable(obj_prop['name'])
            
        if not obj_prop.has_key('update') or obj_prop['update']:
            def_update = self.template.abstractUpdate()

        if obj_prop.has_key('default'):
            def_val = obj_prop['default']
            
        if obj_prop.has_key('namespace'):
            def_ns = obj_prop['namespace']
        
        return self.template.abstractObjectProperty(def_ns, obj_prop['object'], obj_prop['property'], obj_prop['name'], obj_prop['type'], obj_prop['desc'], def_val, def_bindable, def_update, def_initials)

    def abstractFooter(self, element):
        return self.template.abstractFooter()

    def element(self, element, license):
        d = datetime.datetime.utcnow();
        timestamp = d.date().isoformat() + ' ' + d.time().isoformat() + ' UTC'
        return self.template.element(element['classname'], element['namespace'], 'Abstract' + element['classname'], timestamp, license)
	
    def asset(self, element, license):
        return self.template.asset(element['asset'], license)
	
    def namespaceDir(self, namespace):
        return string.join(namespace.split('.'), '/')
