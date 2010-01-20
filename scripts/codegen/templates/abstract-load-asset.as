			var byteArray:ByteArray = new _assetClass();
			var xml:XML = new XML(byteArray.readUTFBytes(byteArray.length));
			
			XMLParser.parseAttributes(xml, this);
			XMLParser.parseChildren(xml, root.elementFactory, root, this);
