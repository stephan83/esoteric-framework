import getopt
import os
import simplejson
import string
import sys
from codegen import Template, Codegen

BASE_DIR = '../../src/'
TEMPLATES_DIR = 'templates'
ELEMENTS_DIR = 'elements'
LICENSES_DIR = 'licenses'
ASSETS_DIR = '../../assets/elements'
INCLUDE_ASSETS_DIR = '../../../../assets/elements'

force = False
warning = 'All outdated element abstract classes will be replaced. Enter `yes` to continue. '

def dir_to_ns(directory):
    return directory.replace('/', '.').replace('\\', '.')

opts, args = getopt.getopt(sys.argv[1:], 'f', ['force'])

for opt, arg in opts:
    if opt in ('-f', '--force'):
        force = True
        warning = 'Warning! All element abstract classes will be replaced, regardless of timestamp. Enter `yes` to continue. '
        
if raw_input(warning) == 'yes':
    template = Template()
    template.load(TEMPLATES_DIR)
    codegen = Codegen(template)

    for root, dirs, files in os.walk(ELEMENTS_DIR):
        namespace = dir_to_ns(root.replace(ELEMENTS_DIR, ''))[1:]

        for filename in files:
            compounds = filename.split('.')

            if compounds[-1] == 'json':
                path = os.path.join(root, filename)
                
                f = open(path)
                element = simplejson.loads(f.read())
                f.close()

                element['namespace'] = namespace
                element['classname'] = string.join(compounds[0:-1], '.')
                element['mtime'] = os.path.getmtime(path)

                codegen.gen(BASE_DIR, element, force, LICENSES_DIR, ASSETS_DIR, INCLUDE_ASSETS_DIR)
                
