package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_817:String = "RWUAM_WHISPER_USER";
      
      public static const const_903:String = "RWUAM_IGNORE_USER";
      
      public static const const_915:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_473:String = "RWUAM_KICK_USER";
      
      public static const const_781:String = "RWUAM_BAN_USER";
      
      public static const const_761:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_723:String = "RWUAM_RESPECT_USER";
      
      public static const const_747:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_644:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_685:String = "RWUAM_START_TRADING";
      
      public static const const_824:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_522:String = "RWUAM_KICK_BOT";
      
      public static const const_746:String = "RWUAM_REPORT";
      
      public static const const_573:String = "RWUAM_PICKUP_PET";
      
      public static const const_1706:String = "RWUAM_TRAIN_PET";
      
      public static const const_547:String = " RWUAM_RESPECT_PET";
      
      public static const const_356:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_676:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
