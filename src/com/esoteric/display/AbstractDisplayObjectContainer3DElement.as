/*
	DO NOT MODIFY THIS FILE, THE CODE GENERATOR WILL ERASE ANY CHANGES MADE.
	MAKE CHANGES TO THE DERIVED CLASS INSTEAD.

	Last generated 2010-01-25 12:58:06.932000 UTC.

	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	~                           Esoteric Framework                            ~
	~                       framework.esotericorp.com                         ~
	~                                                                         ~
	~                  Crafted with care by Stephan Florquin                  ~
	~                       stephan.florquin@gmail.com                        ~
	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	-----                                                                 -----

	Copyright (c) 2009 Stephan Florquin

	Permission is hereby granted, free of charge, to any person	obtaining a
	copy of this software and associated documentationfiles (the "Software"),
	to deal in the Software without	restriction, including without limitation
	the rights to use, copy, modify, merge, publish, distribute, sublicense,
	and / or sell	copies of the Software, and to permit persons to whom the
	Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,	EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
	FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
	DEALINGS IN THE SOFTWARE.
	
	-----                                                                 -----
*/

package com.esoteric.display 
{
	import com.esoteric.core.TweenableElement;
	import org.papervision3d.core.proto.DisplayObjectContainer3D;

	import com.esoteric.core.Context;
	import com.esoteric.events.ElementEvent;
	import com.esoteric.events.PropertyChangeEvent;
	
	public class AbstractDisplayObjectContainer3DElement extends TweenableElement
	{
		
		//---------------------------------------------------------------------
		// Constructor
		//---------------------------------------------------------------------
		
		/**
		 * Constructor.
		 */
		public function AbstractDisplayObjectContainer3DElement(context:Context, kind:String) 
		{
			super(context, kind);
			

		}
		
		//---------------------------------------------------------------------
		// Overrides
		//---------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		
		public override function initialize():void
		{
			super.initialize();
			

		}

		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _displayObjectContainer3D:DisplayObjectContainer3D = null;


		//---------------------------------------------------------------------
		// Getters and setters
		//---------------------------------------------------------------------
		
		/**
		 * The DisplayObjectContainer3D object. [default = null]
		 *
		 * @default	null
		 */
		public function get displayObjectContainer3D():DisplayObjectContainer3D { return _displayObjectContainer3D; }
		
		public function set displayObjectContainer3D(value:DisplayObjectContainer3D):void 
		{
			if(_displayObjectContainer3D != value)
			{
				var oldValue:DisplayObjectContainer3D = _displayObjectContainer3D;
			

			
				_displayObjectContainer3D = value;
				if(hasEventListener(PropertyChangeEvent.PROPERTY_UPDATED))
				{
					dispatchEvent(new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_UPDATED, false, false, 'displayObjectContainer3D', oldValue, value));
				}
				context.renderQueue.add(this);
			}
		}



	}
	
}
