/*
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
	
package com.esoteric.net 
{
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	/**
	 * Cache class.
	 * 
	 * @author Stephan Florquin
	 */
	public class Cache
	{
		//---------------------------------------------------------------------
		// Variables
		//---------------------------------------------------------------------
		
		/**
		 * @private
		 */
		private var _data:Vector.<Dictionary> = new Vector.<Dictionary>(2);
		
		//---------------------------------------------------------------------
		// Functions
		//---------------------------------------------------------------------
		
		/**
		 * Sets a cached resource.
		 * 
		 * @param	url		the url of the resource
		 * @param	data	the resource data
		 * @param	format	the format
		 */
		public function set(url:String, data:*, format:int):void
		{
			if(!_data[format])
			{
				_data[format] = new Dictionary();
			}
			
			_data[format][url] = data;
		}
		
		/**
		 * Gets a cached resource.
		 * 
		 * @param	url		the url of the resource
		 * @param	format	the format
		 * @return			the data
		 */
		public function get(url:String, format:int):*
		{
			if (_data.length > format && _data[format])
			{
				if (_data[format].hasOwnProperty(url))
				{
					return _data[format][url];
				}
			}
			
			return null;
		}
		
	}

}