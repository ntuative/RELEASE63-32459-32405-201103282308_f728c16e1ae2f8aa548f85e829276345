package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.ITextWindow;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class TextCropper implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_549:TextField;
      
      private var var_1032:TextFormat;
      
      private var var_2903:String = "...";
      
      private var var_2902:int = 20;
      
      public function TextCropper()
      {
         super();
         this.var_549 = new TextField();
         this.var_549.autoSize = TextFieldAutoSize.LEFT;
         this.var_1032 = this.var_549.defaultTextFormat;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_549 = null;
            this._disposed = true;
         }
      }
      
      public function crop(param1:ITextWindow) : void
      {
         var _loc3_:int = 0;
         this.var_1032.font = param1.fontFace;
         this.var_1032.size = param1.fontSize;
         this.var_1032.bold = param1.bold;
         this.var_1032.italic = param1.italic;
         this.var_549.setTextFormat(this.var_1032);
         this.var_549.text = param1.getLineText(0);
         var _loc2_:int = this.var_549.textWidth;
         if(_loc2_ > param1.width)
         {
            _loc3_ = this.var_549.getCharIndexAtPoint(param1.width - this.var_2902,this.var_549.textHeight / 2);
            param1.text = param1.text.slice(0,_loc3_) + this.var_2903;
         }
      }
   }
}
