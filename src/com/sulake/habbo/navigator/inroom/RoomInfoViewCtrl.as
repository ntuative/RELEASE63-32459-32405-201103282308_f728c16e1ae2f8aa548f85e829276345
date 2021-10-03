package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2904:int;
      
      private var var_394:RoomEventViewCtrl;
      
      private var var_280:Timer;
      
      private var var_193:RoomSettingsCtrl;
      
      private var var_279:RoomThumbnailCtrl;
      
      private var var_1269:TagRenderer;
      
      private var var_324:IWindowContainer;
      
      private var var_459:IWindowContainer;
      
      private var var_840:IWindowContainer;
      
      private var var_2833:IWindowContainer;
      
      private var var_2834:IWindowContainer;
      
      private var var_1553:IWindowContainer;
      
      private var var_930:ITextWindow;
      
      private var var_1284:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_1038:ITextWindow;
      
      private var var_1555:ITextWindow;
      
      private var var_1285:ITextWindow;
      
      private var var_1039:ITextWindow;
      
      private var var_2026:ITextWindow;
      
      private var var_278:IWindowContainer;
      
      private var var_1037:IWindowContainer;
      
      private var var_2028:IWindowContainer;
      
      private var var_2456:ITextWindow;
      
      private var var_841:ITextWindow;
      
      private var var_2832:IWindow;
      
      private var var_1551:IContainerButtonWindow;
      
      private var var_1550:IContainerButtonWindow;
      
      private var var_1556:IContainerButtonWindow;
      
      private var var_1557:IContainerButtonWindow;
      
      private var var_1552:IContainerButtonWindow;
      
      private var var_1549:IContainerButtonWindow;
      
      private var var_2024:IButtonWindow;
      
      private var var_2027:IButtonWindow;
      
      private var var_2025:IButtonWindow;
      
      private var var_1036:IWindowContainer;
      
      private var var_1554:ITextWindow;
      
      private var var_1287:ITextFieldWindow;
      
      private var var_67:IWindowContainer;
      
      private var var_1286:IButtonWindow;
      
      private var var_1040:IButtonWindow;
      
      private var var_2835:String;
      
      private var var_2836:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_394 = new RoomEventViewCtrl(this._navigator);
         this.var_193 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_279 = new RoomThumbnailCtrl(this._navigator);
         this.var_1269 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_193);
         this.var_280 = new Timer(6000,1);
         this.var_280.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_89,this.onToolbarIconState);
         }
         if(this.var_280)
         {
            this.var_280.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_280.reset();
            this.var_280 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_280.reset();
         this.var_394.active = true;
         this.var_193.active = false;
         this.var_279.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_280.reset();
         this.var_193.load(param1);
         this.var_193.active = true;
         this.var_394.active = false;
         this.var_279.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_193.active = true;
         this.var_394.active = false;
         this.var_279.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_280.reset();
         this.var_193.active = false;
         this.var_394.active = false;
         this.var_279.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1166,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_280.reset();
         this.var_394.active = false;
         this.var_193.active = false;
         this.var_279.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_53,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_280.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_280.reset();
         this.var_394.active = false;
         this.var_193.active = false;
         this.var_279.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_53,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_587,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_324.rectangle + ", " + this.var_278.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_324);
         this.var_324.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_193.refresh(this.var_324);
         this.var_279.refresh(this.var_324);
         Util.moveChildrenToColumn(this.var_324,["room_details","room_buttons"],0,2);
         this.var_324.height = Util.getLowestPoint(this.var_324);
         this.var_324.visible = true;
         Logger.log("XORP: " + this.var_459.visible + ", " + this.var_1553.visible + ", " + this.var_840.visible + ", " + this.var_840.rectangle + ", " + this.var_324.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_278);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_394.refresh(this.var_278);
         if(Util.hasVisibleChildren(this.var_278) && !(this.var_193.active || this.var_279.active))
         {
            Util.moveChildrenToColumn(this.var_278,["event_details","event_buttons"],0,2);
            this.var_278.height = Util.getLowestPoint(this.var_278);
            this.var_278.visible = true;
         }
         else
         {
            this.var_278.visible = false;
         }
         Logger.log("EVENT: " + this.var_278.visible + ", " + this.var_278.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_193.active && !this.var_279.active && !this.var_394.active)
         {
            this.var_1036.visible = true;
            this.var_1287.text = this.getEmbedData();
         }
         else
         {
            this.var_1036.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_67)
         {
            return;
         }
         if(this.var_193.active)
         {
            this.var_67.visible = false;
            return;
         }
         this.var_67.visible = true;
         if(this.var_1286)
         {
            if(this.var_2835 == "exit_homeroom")
            {
               this.var_1286.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1286.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_1040)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_1040.visible = _loc1_;
            if(this.var_2836 == "0")
            {
               this.var_1040.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_1040.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_193.active || this.var_279.active)
         {
            return;
         }
         this.var_930.text = param1.roomName;
         this.var_930.height = this.var_930.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_1038.text = param1.description;
         this.var_1269.refreshTags(this.var_459,param1.tags);
         this.var_1038.visible = false;
         if(param1.description != "")
         {
            this.var_1038.height = this.var_1038.textHeight + 5;
            this.var_1038.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1550,"facebook_logo_small",_loc3_,null,0);
         this.var_1550.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1551,"thumb_up",_loc4_,null,0);
         this.var_1551.visible = _loc4_;
         this.var_1039.visible = !_loc4_;
         this.var_2026.visible = !_loc4_;
         this.var_2026.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_459,"home",param2,null,0);
         this._navigator.refreshButton(this.var_459,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_459,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_930.y,0);
         this.var_459.visible = true;
         this.var_459.height = Util.getLowestPoint(this.var_459);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_459.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_193.active || this.var_279.active)
         {
            return;
         }
         this.var_1284.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1284.height = this.var_1284.textHeight + 5;
         this.var_1555.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1555.height = this.var_1555.textHeight + 5;
         Util.moveChildrenToColumn(this.var_840,["public_space_name","public_space_desc"],this.var_1284.y,0);
         this.var_840.visible = true;
         this.var_840.height = Math.max(86,Util.getLowestPoint(this.var_840));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_394.active)
         {
            return;
         }
         this.var_2456.text = param1.eventName;
         this.var_841.text = param1.eventDescription;
         this.var_1269.refreshTags(this.var_1037,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_841.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_841.height = this.var_841.textHeight + 5;
            this.var_841.y = Util.getLowestPoint(this.var_1037) + 2;
            this.var_841.visible = true;
         }
         this.var_1037.visible = true;
         this.var_1037.height = Util.getLowestPoint(this.var_1037);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_193.active || this.var_279.active)
         {
            return;
         }
         this.var_2024.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1556.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1557.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1552.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1549.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1553.visible = Util.hasVisibleChildren(this.var_1553);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_394.active)
         {
            return;
         }
         this.var_2027.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_2025.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_2028.visible = Util.hasVisibleChildren(this.var_2028);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_61,false);
         this._window.setParamFlag(HabboWindowParam.const_1666,true);
         this._window.visible = false;
         this.var_324 = IWindowContainer(this.find("room_info"));
         this.var_459 = IWindowContainer(this.find("room_details"));
         this.var_840 = IWindowContainer(this.find("public_space_details"));
         this.var_2833 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2834 = IWindowContainer(this.find("rating_cont"));
         this.var_1553 = IWindowContainer(this.find("room_buttons"));
         this.var_930 = ITextWindow(this.find("room_name"));
         this.var_1284 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_1038 = ITextWindow(this.find("room_desc"));
         this.var_1555 = ITextWindow(this.find("public_space_desc"));
         this.var_1285 = ITextWindow(this.find("owner_caption"));
         this.var_1039 = ITextWindow(this.find("rating_caption"));
         this.var_2026 = ITextWindow(this.find("rating_txt"));
         this.var_278 = IWindowContainer(this.find("event_info"));
         this.var_1037 = IWindowContainer(this.find("event_details"));
         this.var_2028 = IWindowContainer(this.find("event_buttons"));
         this.var_2456 = ITextWindow(this.find("event_name"));
         this.var_841 = ITextWindow(this.find("event_desc"));
         this.var_1550 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1551 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2832 = this.find("staff_pick_button");
         this.var_1556 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1557 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1552 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1549 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_2024 = IButtonWindow(this.find("room_settings_button"));
         this.var_2027 = IButtonWindow(this.find("create_event_button"));
         this.var_2025 = IButtonWindow(this.find("edit_event_button"));
         this.var_1036 = IWindowContainer(this.find("embed_info"));
         this.var_1554 = ITextWindow(this.find("embed_info_txt"));
         this.var_1287 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_67 = IWindowContainer(this.find("buttons_container"));
         this.var_1286 = IButtonWindow(this.find("exit_room_button"));
         this.var_1040 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1556,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1557,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_2024,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1552,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1549,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_2027,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_2025,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1287,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1551,this.onThumbUp);
         Util.setProcDirectly(this.var_2832,this.onStaffPick);
         Util.setProcDirectly(this.var_1550,this.onFacebookLike);
         Util.setProcDirectly(this.var_1040,this.onZoomClick);
         Util.setProcDirectly(this.var_1286,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1556,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1557,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1552,"home",true,null,0);
         this._navigator.refreshButton(this.var_1549,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_324,this.onHover);
         Util.setProcDirectly(this.var_278,this.onHover);
         this.var_1285.width = this.var_1285.textWidth;
         Util.moveChildrenToRow(this.var_2833,["owner_caption","owner_name"],this.var_1285.x,this.var_1285.y,3);
         this.var_1039.width = this.var_1039.textWidth;
         Util.moveChildrenToRow(this.var_2834,["rating_caption","rating_txt"],this.var_1039.x,this.var_1039.y,3);
         this.var_1554.height = this.var_1554.textHeight + 5;
         Util.moveChildrenToColumn(this.var_1036,["embed_info_txt","embed_src_txt"],this.var_1554.y,2);
         this.var_1036.height = Util.getLowestPoint(this.var_1036) + 5;
         this.var_2904 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1287.setSelection(0,this.var_1287.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_37);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_37);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_89)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2836 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2835 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_280.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_587,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_89,this.onToolbarIconState);
         }
      }
   }
}
