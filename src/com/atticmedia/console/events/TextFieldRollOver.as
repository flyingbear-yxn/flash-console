/*
* 
* Copyright (c) 2008-2009 Lu Aye Oo
* 
* @author 		Lu Aye Oo
* 
* http://code.google.com/p/flash-console/
* 
*
* This software is provided 'as-is', without any express or implied
* warranty.  In no event will the authors be held liable for any damages
* arising from the use of this software.
* Permission is granted to anyone to use this software for any purpose,
* including commercial applications, and to alter it and redistribute it
* freely, subject to the following restrictions:
* 1. The origin of this software must not be misrepresented; you must not
* claim that you wrote the original software. If you use this software
* in a product, an acknowledgment in the product documentation would be
* appreciated but is not required.
* 2. Altered source versions must be plainly marked as such, and must not be
* misrepresented as being the original software.
* 3. This notice may not be removed or altered from any source distribution.
* 
*/
package com.atticmedia.console.events {
	import flash.events.Event;

	public class TextFieldRollOver extends Event {
		
		public static const ROLLOVER:String = "TextFieldRollOver";
		
		public var url:String;
		public var text:String;
		
		public function TextFieldRollOver(lnk:String  = null, txt:String = null) {
			url = lnk;
			text = txt;
			super(ROLLOVER, false, false);
		}
		override public function clone():Event{
			var e:TextFieldRollOver = super.clone() as TextFieldRollOver;
			e.url = url;
			e.text = text;
			return e;
		}
	}
}