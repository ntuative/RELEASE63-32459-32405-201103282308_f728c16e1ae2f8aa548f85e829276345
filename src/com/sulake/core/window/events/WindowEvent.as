package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1610:String = "WE_CREATE";
      
      public static const const_1665:String = "WE_CREATED";
      
      public static const const_1490:String = "WE_DESTROY";
      
      public static const const_286:String = "WE_DESTROYED";
      
      public static const const_1721:String = "WE_OPEN";
      
      public static const const_1695:String = "WE_OPENED";
      
      public static const const_1710:String = "WE_CLOSE";
      
      public static const const_1497:String = "WE_CLOSED";
      
      public static const const_1671:String = "WE_FOCUS";
      
      public static const const_303:String = "WE_FOCUSED";
      
      public static const const_1708:String = "WE_UNFOCUS";
      
      public static const const_1504:String = "WE_UNFOCUSED";
      
      public static const const_1567:String = "WE_ACTIVATE";
      
      public static const const_1688:String = "WE_ACTIVATED";
      
      public static const const_1641:String = "WE_DEACTIVATE";
      
      public static const const_500:String = "WE_DEACTIVATED";
      
      public static const const_563:String = "WE_SELECT";
      
      public static const const_63:String = "WE_SELECTED";
      
      public static const const_899:String = "WE_UNSELECT";
      
      public static const const_664:String = "WE_UNSELECTED";
      
      public static const const_1891:String = "WE_ATTACH";
      
      public static const const_1819:String = "WE_ATTACHED";
      
      public static const const_2031:String = "WE_DETACH";
      
      public static const const_1824:String = "WE_DETACHED";
      
      public static const const_1588:String = "WE_LOCK";
      
      public static const const_1451:String = "WE_LOCKED";
      
      public static const const_1587:String = "WE_UNLOCK";
      
      public static const const_1646:String = "WE_UNLOCKED";
      
      public static const const_812:String = "WE_ENABLE";
      
      public static const const_281:String = "WE_ENABLED";
      
      public static const const_869:String = "WE_DISABLE";
      
      public static const const_237:String = "WE_DISABLED";
      
      public static const const_1568:String = "WE_RELOCATE";
      
      public static const const_378:String = "WE_RELOCATED";
      
      public static const const_1717:String = "WE_RESIZE";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const WINDOW_EVENT_MINIMIZE:String = "WE_MINIMIZE";
      
      public static const const_1520:String = "WE_MINIMIZED";
      
      public static const const_1456:String = "WE_MAXIMIZE";
      
      public static const const_1496:String = "WE_MAXIMIZED";
      
      public static const const_1700:String = "WE_RESTORE";
      
      public static const const_1514:String = "WE_RESTORED";
      
      public static const const_2029:String = "WE_ARRANGE";
      
      public static const const_1908:String = "WE_ARRANGED";
      
      public static const const_104:String = "WE_UPDATE";
      
      public static const const_1937:String = "WE_UPDATED";
      
      public static const const_2006:String = "WE_CHILD_RELOCATE";
      
      public static const const_465:String = "WE_CHILD_RELOCATED";
      
      public static const const_1844:String = "WE_CHILD_RESIZE";
      
      public static const const_332:String = "WE_CHILD_RESIZED";
      
      public static const const_1968:String = "WE_CHILD_REMOVE";
      
      public static const const_517:String = "WE_CHILD_REMOVED";
      
      public static const const_2021:String = "WE_PARENT_RELOCATE";
      
      public static const const_1941:String = "WE_PARENT_RELOCATED";
      
      public static const const_2014:String = "WE_PARENT_RESIZE";
      
      public static const const_1508:String = "WE_PARENT_RESIZED";
      
      public static const const_206:String = "WE_OK";
      
      public static const const_907:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_485:String = "WE_SCROLL";
      
      public static const const_162:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_467:IWindow;
      
      protected var var_1566:Boolean;
      
      protected var var_1567:Boolean;
      
      private var var_1847:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow = null, param3:IWindow = null, param4:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_467 = param3;
         this.var_1566 = false;
         this.var_1567 = param4;
         super(param1);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = false ? POOL.pop() : new WindowEvent(param1);
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_467 = param3;
         _loc5_.var_1567 = param4;
         _loc5_.var_1847 = false;
         return _loc5_;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_467;
      }
      
      override public function get cancelable() : Boolean
      {
         return this.var_1567;
      }
      
      public function recycle() : void
      {
         if(this.var_1847)
         {
            throw new Error("Event already recycled!");
         }
         this._type = null;
         this.var_467 = null;
         this._window = null;
         this.var_1847 = true;
         this.var_1566 = false;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1566 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1566;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","cancelable","window");
      }
   }
}
