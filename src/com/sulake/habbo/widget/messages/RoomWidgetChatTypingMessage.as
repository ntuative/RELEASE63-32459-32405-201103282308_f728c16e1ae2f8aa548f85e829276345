package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_774:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_637:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_774);
         this.var_637 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_637;
      }
   }
}
