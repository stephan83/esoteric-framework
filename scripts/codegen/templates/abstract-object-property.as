		/**
		 * $desc [default = $default]
		 *
		 * @default	$default
		 */
		$namespace function get $name():$type { return _$name; }
		
		$namespace function set $name(value:$type):void 
		{

			if($name != value)
			{
				var oldValue:$type = _$name;

$initials
				
				_$name = value;

				if($object)
				{
					$object.$property = value;
				}

$update			
$bindable
			}
		}

