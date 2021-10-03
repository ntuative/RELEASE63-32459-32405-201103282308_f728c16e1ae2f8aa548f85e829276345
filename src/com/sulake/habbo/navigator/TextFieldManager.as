package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_76:ITextFieldWindow;
      
      private var var_638:Boolean;
      
      private var var_1342:String = "";
      
      private var var_1878:int;
      
      private var var_1879:Function;
      
      private var var_2645:String = "";
      
      private var var_136:IWindowContainer;
      
      private var var_2644:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2646:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_76 = param2;
         this.var_1878 = param3;
         this.var_1879 = param4;
         if(param5 != null)
         {
            this.var_638 = true;
            this.var_1342 = param5;
            this.var_76.text = param5;
         }
         Util.setProcDirectly(this.var_76,this.onInputClick);
         this.var_76.addEventListener(WindowKeyboardEvent.const_187,this.checkEnterPress);
         this.var_76.addEventListener(WindowEvent.const_107,this.checkMaxLen);
         this.var_2644 = this.var_76.textBackground;
         this._orgTextBackgroundColor = this.var_76.textBackgroundColor;
         this.var_2646 = this.var_76.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_76.textBackground = this.var_2644;
         this.var_76.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_76.textColor = this.var_2646;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_76.textBackground = true;
         this.var_76.textBackgroundColor = 4294021019;
         this.var_76.textColor = 4278190080;
         if(this.var_136 == null)
         {
            this.var_136 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_136,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_76.parent).addChild(this.var_136);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_136.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_136.findChildByName("border").width = _loc2_.width + 15;
         this.var_136.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_76.getLocalPosition(_loc3_);
         this.var_136.x = _loc3_.x;
         this.var_136.y = _loc3_.y - this.var_136.height + 3;
         var _loc4_:IWindow = this.var_136.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_136.width / 2 - _loc4_.width / 2;
         this.var_136.x += (this.var_76.width - this.var_136.width) / 2;
         this.var_136.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1342 != null)
         {
            this.var_76.text = this.var_1342;
            this.var_638 = true;
         }
         else
         {
            this.var_76.text = "";
            this.var_638 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_638)
         {
            return this.var_2645;
         }
         return this.var_76.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_638 = false;
         this.var_76.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_136 != null)
         {
            this.var_136.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_76;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_638 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_303)
         {
            return;
         }
         if(!this.var_638)
         {
            return;
         }
         this.var_76.text = this.var_2645;
         this.var_638 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(this.var_1879 != null)
            {
               this.var_1879();
            }
         }
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = this.var_76.text;
         if(_loc2_.length > this.var_1878)
         {
            this.var_76.text = _loc2_.substring(0,this.var_1878);
         }
      }
   }
}
