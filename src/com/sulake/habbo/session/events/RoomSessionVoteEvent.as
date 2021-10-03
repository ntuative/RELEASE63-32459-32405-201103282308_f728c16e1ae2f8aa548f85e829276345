package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_155:String = "RSPE_VOTE_QUESTION";
      
      public static const const_148:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1131:String = "";
      
      private var var_1339:Array;
      
      private var var_1064:Array;
      
      private var var_1824:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1339 = [];
         this.var_1064 = [];
         super(param1,param2,param7,param8);
         this.var_1131 = param3;
         this.var_1339 = param4;
         this.var_1064 = param5;
         if(this.var_1064 == null)
         {
            this.var_1064 = [];
         }
         this.var_1824 = param6;
      }
      
      public function get question() : String
      {
         return this.var_1131;
      }
      
      public function get choices() : Array
      {
         return this.var_1339.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1064.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1824;
      }
   }
}
