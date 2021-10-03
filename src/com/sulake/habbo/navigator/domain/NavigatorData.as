package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1782:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_201:MsgWithRequestId;
      
      private var var_602:RoomEventData;
      
      private var var_2344:Boolean;
      
      private var var_2349:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2350:int;
      
      private var var_250:GuestRoomData;
      
      private var var_916:PublicRoomShortData;
      
      private var var_2347:int;
      
      private var var_2343:Boolean;
      
      private var var_2341:int;
      
      private var var_2348:Boolean;
      
      private var var_1716:int;
      
      private var var_2346:Boolean;
      
      private var var_1385:Array;
      
      private var var_1383:Array;
      
      private var var_2340:int;
      
      private var var_1384:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1132:Boolean;
      
      private var var_2345:int;
      
      private var var_2342:Boolean;
      
      private var var_2351:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1385 = new Array();
         this.var_1383 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_250 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_250 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_916 = null;
         this.var_250 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_916 = param1.publicSpace;
            this.var_602 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_602 != null)
         {
            this.var_602.dispose();
            this.var_602 = null;
         }
         if(this.var_916 != null)
         {
            this.var_916.dispose();
            this.var_916 = null;
         }
         if(this.var_250 != null)
         {
            this.var_250.dispose();
            this.var_250 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_250 != null)
         {
            this.var_250.dispose();
         }
         this.var_250 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_602 != null)
         {
            this.var_602.dispose();
         }
         this.var_602 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_201 != null && this.var_201 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1132 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1132 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_201 = param1;
         this.var_1132 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_201 == null)
         {
            return;
         }
         this.var_201.dispose();
         this.var_201 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_201 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_201 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_201 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_602;
      }
      
      public function get avatarId() : int
      {
         return this.var_2350;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2344;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2349;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_250;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_916;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2343;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2341;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1716;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2348;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2345;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2347;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2346;
      }
      
      public function get adIndex() : int
      {
         return this.var_2351;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2342;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2350 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2341 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2343 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2344 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2349 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2348 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1716 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2345 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2347 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2346 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2351 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2342 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1385 = param1;
         this.var_1383 = new Array();
         for each(_loc2_ in this.var_1385)
         {
            if(_loc2_.visible)
            {
               this.var_1383.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1385;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1383;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2340 = param1.limit;
         this.var_1384 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1384 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_250.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_250 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_250.flatId;
         return this.var_1716 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1384 >= this.var_2340;
      }
      
      public function startLoading() : void
      {
         this.var_1132 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1132;
      }
   }
}
