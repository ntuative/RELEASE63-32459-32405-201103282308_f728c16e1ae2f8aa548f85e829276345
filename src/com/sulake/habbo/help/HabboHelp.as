package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_180:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_296:IHabboCommunicationManager;
      
      private var var_928:IHabboLocalizationManager;
      
      private var var_749:IHabboConfigurationManager;
      
      private var var_294:ISessionDataManager;
      
      private var var_1142:FaqIndex;
      
      private var var_1424:IncomingMessages;
      
      private var var_65:HelpUI;
      
      private var var_105:TutorialUI;
      
      private var var_750:HotelMergeUI;
      
      private var var_1402:CallForHelpData;
      
      private var var_2417:UserRegistry;
      
      private var var_2416:String = "";
      
      private var var_612:WelcomeScreenController;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1402 = new CallForHelpData();
         this.var_2417 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1142 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2416 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2416;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1402;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2417;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_928;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_180;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_294;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_105;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_750;
      }
      
      public function hasChangedName() : Boolean
      {
         if(this.var_105)
         {
            return this.var_105.hasChangedName;
         }
         return true;
      }
      
      override public function dispose() : void
      {
         if(this.var_65 != null)
         {
            this.var_65.dispose();
            this.var_65 = null;
         }
         if(this.var_105 != null)
         {
            this.var_105.dispose();
            this.var_105 = null;
         }
         if(this.var_750)
         {
            this.var_750.dispose();
            this.var_750 = null;
         }
         if(this.var_1142 != null)
         {
            this.var_1142.dispose();
            this.var_1142 = null;
         }
         this.var_1424 = null;
         if(this.var_180)
         {
            this.var_180.release(new IIDHabboToolbar());
            this.var_180 = null;
         }
         if(this.var_928)
         {
            this.var_928.release(new IIDHabboLocalizationManager());
            this.var_928 = null;
         }
         if(this.var_296)
         {
            this.var_296.release(new IIDHabboCommunicationManager());
            this.var_296 = null;
         }
         if(this.var_749)
         {
            this.var_749.release(new IIDHabboConfigurationManager());
            this.var_749 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_294 != null)
         {
            this.var_294.release(new IIDSessionDataManager());
            this.var_294 = null;
         }
         if(this.var_612 != null)
         {
            this.var_612.dispose();
            this.var_612 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_65 != null)
         {
            this.var_65.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_65 != null)
         {
            this.var_65.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_65 != null)
         {
            this.var_65.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_65 != null)
         {
            this.var_65.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_65 != null)
         {
            this.var_65.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1142;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_296 != null && param1 != null)
         {
            this.var_296.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_749 == null)
         {
            return param1;
         }
         return this.var_749.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_65 != null)
         {
            this.var_65.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_65 != null)
         {
            this.var_65.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1402.reportedUserId = param1;
         this.var_1402.reportedUserName = param2;
         this.var_65.showUI(HabboHelpViewEnum.const_370);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_65 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_65.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_65 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_65 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_928,this.var_180);
         }
         return this.var_65 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         var _loc1_:* = false;
         if(this.var_105 == null && this._assetLibrary != null && this._windowManager != null)
         {
            _loc1_ = this.getConfigurationKey("avatar.widget.enabled","0") == "0";
            this.var_105 = new TutorialUI(this,_loc1_);
         }
         return this.var_105 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_105 != null)
         {
            this.var_105.dispose();
            this.var_105 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_750)
         {
            this.var_750 = new HotelMergeUI(this);
         }
         this.var_750.startNameChange();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_105 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_105.update(param1,param2,param3);
      }
      
      public function startNameChange() : void
      {
         if(this.var_105)
         {
            this.var_105.showView(TutorialUI.const_322);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_296 = IHabboCommunicationManager(param2);
         this.var_1424 = new IncomingMessages(this,this.var_296);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_180 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_928 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_749 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_81,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_92,this.onRoomSessionEvent);
         this.var_180.events.addEventListener(HabboToolbarEvent.const_65,this.onHabboToolbarEvent);
         this.var_180.events.addEventListener(HabboToolbarEvent.const_37,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_294 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_81:
               if(this.var_65 != null)
               {
                  this.var_65.setRoomSessionStatus(true);
               }
               if(this.var_105 != null)
               {
                  this.var_105.setRoomSessionStatus(true);
               }
               this.showWelcomeScreen(true);
               break;
            case RoomSessionEvent.const_92:
               if(this.var_65 != null)
               {
                  this.var_65.setRoomSessionStatus(false);
               }
               if(this.var_105 != null)
               {
                  this.var_105.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
               this.showWelcomeScreen(false);
         }
      }
      
      private function showWelcomeScreen(param1:Boolean) : void
      {
         if(!this.var_612)
         {
            this.var_612 = new WelcomeScreenController(this,this._windowManager,this.var_749);
         }
         this.var_612.showWelcomeScreen(param1);
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_180 != null)
         {
            this.var_180.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_151,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_65)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_37)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
      
      public function setWelcomeNotifications(param1:Array) : void
      {
         if(!this.var_612)
         {
            this.showWelcomeScreen(true);
         }
         this.var_612.notifications = param1;
      }
   }
}
