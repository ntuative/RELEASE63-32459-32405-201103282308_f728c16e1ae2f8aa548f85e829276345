package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1582:String = "WN_CRETAE";
      
      public static const const_1627:String = "WN_CREATED";
      
      public static const const_1253:String = "WN_DESTROY";
      
      public static const const_1251:String = "WN_DESTROYED";
      
      public static const const_1212:String = "WN_OPEN";
      
      public static const const_1028:String = "WN_OPENED";
      
      public static const const_1200:String = "WN_CLOSE";
      
      public static const const_1161:String = "WN_CLOSED";
      
      public static const const_1177:String = "WN_FOCUS";
      
      public static const const_1123:String = "WN_FOCUSED";
      
      public static const const_1085:String = "WN_UNFOCUS";
      
      public static const const_1081:String = "WN_UNFOCUSED";
      
      public static const const_1209:String = "WN_ACTIVATE";
      
      public static const const_358:String = "WN_ACTVATED";
      
      public static const const_1146:String = "WN_DEACTIVATE";
      
      public static const const_1122:String = "WN_DEACTIVATED";
      
      public static const const_531:String = "WN_SELECT";
      
      public static const const_348:String = "WN_SELECTED";
      
      public static const const_726:String = "WN_UNSELECT";
      
      public static const const_636:String = "WN_UNSELECTED";
      
      public static const const_1131:String = "WN_LOCK";
      
      public static const const_1141:String = "WN_LOCKED";
      
      public static const const_1145:String = "WN_UNLOCK";
      
      public static const const_1135:String = "WN_UNLOCKED";
      
      public static const const_1226:String = "WN_ENABLE";
      
      public static const const_860:String = "WN_ENABLED";
      
      public static const const_1236:String = "WN_DISABLE";
      
      public static const const_698:String = "WN_DISABLED";
      
      public static const const_895:String = "WN_RESIZE";
      
      public static const const_200:String = "WN_RESIZED";
      
      public static const const_1205:String = "WN_RELOCATE";
      
      public static const const_556:String = "WN_RELOCATED";
      
      public static const const_1238:String = "WN_MINIMIZE";
      
      public static const const_1184:String = "WN_MINIMIZED";
      
      public static const const_1193:String = "WN_MAXIMIZE";
      
      public static const const_1072:String = "WN_MAXIMIZED";
      
      public static const const_1073:String = "WN_RESTORE";
      
      public static const const_1171:String = "WN_RESTORED";
      
      public static const const_357:String = "WN_CHILD_ADDED";
      
      public static const const_674:String = "WN_CHILD_REMOVED";
      
      public static const const_335:String = "WN_CHILD_RESIZED";
      
      public static const const_289:String = "WN_CHILD_RELOCATED";
      
      public static const WINDOW_NOTIFY_CHILD_ACTIVATED:String = "WN_CHILD_ACTIVATED";
      
      public static const const_590:String = "WN_PARENT_ADDED";
      
      public static const const_1069:String = "WN_PARENT_REMOVED";
      
      public static const const_526:String = "WN_PARENT_RESIZED";
      
      public static const const_1059:String = "WN_PARENT_RELOCATED";
      
      public static const const_777:String = "WN_PARENT_ACTIVATED";
      
      public static const const_451:String = "WN_STATE_UPDATED";
      
      public static const const_599:String = "WN_STYLE_UPDATED";
      
      public static const const_464:String = "WN_PARAM_UPDATED";
      
      public static const UNKNOWN:String = "UNKNOWN";
      
      private static const POOL:Array = [];
       
      
      private var _isRecycled:Boolean;
      
      public function WindowNotifyEvent()
      {
         super("",null,null);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowNotifyEvent
      {
         var _loc5_:WindowNotifyEvent = false ? POOL.pop() : new WindowNotifyEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_467 = param3;
         _loc5_.var_1567 = param4;
         _loc5_._isRecycled = false;
         return _loc5_;
      }
      
      override public function recycle() : void
      {
         if(this._isRecycled)
         {
            throw new Error("Event already recycled!");
         }
         _type = null;
         var_467 = null;
         _window = null;
         this._isRecycled = true;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(type,_window,var_467,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
