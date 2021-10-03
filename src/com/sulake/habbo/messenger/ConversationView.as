package com.sulake.habbo.messenger
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.FollowFriendMessageComposer;
   import com.sulake.habbo.messenger.domain.Conversation;
   import com.sulake.habbo.messenger.domain.Message;
   import flash.external.ExternalInterface;
   import flash.utils.Dictionary;
   
   public class ConversationView
   {
      
      private static const const_1280:int = 10;
      
      private static const const_939:int = 100;
      
      private static const const_1279:int = 20;
       
      
      private var var_128:HabboMessenger;
      
      private var var_2147:IScrollbarWindow;
      
      private var var_1595:IContainerButtonWindow;
      
      private var var_60:IItemListWindow;
      
      private var var_473:Conversation;
      
      public function ConversationView(param1:HabboMessenger, param2:IWindowContainer)
      {
         super();
         this.var_128 = param1;
         this.var_1595 = this.initButton("follow_friend",this.onFollowButtonClick,param2);
         this.var_60 = IItemListWindow(param2.findChildByName("msg_list"));
         this.var_2147 = IScrollbarWindow(param2.findChildByName("scroller"));
         this.var_128.refreshButton(param2,"close",true,this.onCloseButtonClick,0);
         this.initButton("minimail",this.onMinimailButtonClick,param2);
      }
      
      public function addMessage(param1:Message) : void
      {
         var _loc2_:int = this.findAddIndex();
         if(_loc2_ >= const_939 + const_1279)
         {
            this.refreshList();
            this.afterResize();
         }
         else
         {
            this.var_60.autoArrangeItems = false;
            this.refreshEntry(true,_loc2_,param1);
            this.var_60.autoArrangeItems = true;
         }
         this.var_2147.scrollV = 1;
         this.refreshScrollBarVisibility();
      }
      
      public function afterResize() : void
      {
         this.refreshListDims();
         var _loc1_:Boolean = this.refreshScrollBarVisibility();
         if(_loc1_)
         {
            this.refreshListDims();
         }
      }
      
      private function initButton(param1:String, param2:Function, param3:IWindowContainer) : IContainerButtonWindow
      {
         var _loc4_:IContainerButtonWindow = IContainerButtonWindow(param3.findChildByName("button_" + param1));
         _loc4_.procedure = param2;
         var _loc5_:IBitmapWrapperWindow = IBitmapWrapperWindow(_loc4_.findChildByName("icon"));
         _loc5_.bitmap = this.var_128.getButtonImage(param1);
         _loc5_.width = _loc5_.bitmap.width;
         _loc5_.height = _loc5_.bitmap.height;
         return _loc4_;
      }
      
      private function refreshListDims() : void
      {
         var _loc2_:* = null;
         this.var_60.autoArrangeItems = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_60.numListItems)
         {
            _loc2_ = ITextWindow(this.var_60.getListItemAt(_loc1_));
            this.refreshTextDims(_loc2_);
            if(!_loc2_.visible)
            {
               break;
            }
            _loc1_++;
         }
         this.var_60.autoArrangeItems = true;
      }
      
      private function refreshTextDims(param1:ITextWindow) : void
      {
         param1.width = this.var_60.width;
         param1.height = param1.textHeight + const_1280;
         param1.invalidate();
      }
      
      private function refreshScrollBarVisibility() : Boolean
      {
         var _loc1_:IWindowContainer = IWindowContainer(this.var_60.parent);
         var _loc2_:IWindow = _loc1_.getChildByName("scroller") as IWindow;
         var _loc3_:* = this.var_60.scrollableRegion.height > this.var_60.height;
         if(_loc2_.visible)
         {
            if(_loc3_)
            {
               return false;
            }
            _loc2_.visible = false;
            this.var_60.width += 22;
            return true;
         }
         if(_loc3_)
         {
            _loc2_.visible = true;
            this.var_60.width -= 22;
            return true;
         }
         return false;
      }
      
      private function findAddIndex() : int
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_60.numListItems)
         {
            _loc2_ = this.var_60.getListItemAt(_loc1_);
            if(!_loc2_.visible)
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return _loc1_ + 1;
      }
      
      public function refresh() : void
      {
         var _loc1_:Conversation = this.var_128.conversations.findSelectedConversation();
         if(_loc1_ == null)
         {
            return;
         }
         if(this.var_473 == null || _loc1_.id != this.var_473.id)
         {
            this.var_473 = _loc1_;
            this.refreshList();
            this.afterResize();
         }
         this.refreshHeader();
      }
      
      public function refreshHeader() : void
      {
         if(this.var_473.followingAllowed)
         {
            this.var_1595.enable();
         }
         else
         {
            this.var_1595.disable();
         }
      }
      
      private function refreshList() : void
      {
         var _loc3_:Boolean = false;
         if(this.var_60 == null)
         {
            return;
         }
         this.var_60.autoArrangeItems = false;
         var _loc1_:int = 0;
         var _loc2_:int = Math.max(0,this.var_473.messages.length - const_939);
         _loc1_ = 0;
         while(_loc1_ + _loc2_ < this.var_473.messages.length)
         {
            this.refreshEntry(true,_loc1_,this.var_473.messages[_loc1_ + _loc2_]);
            _loc1_++;
         }
         while(true)
         {
            _loc3_ = this.refreshEntry(false,_loc1_,null);
            if(_loc3_)
            {
               break;
            }
            _loc1_++;
         }
         this.var_60.autoArrangeItems = true;
      }
      
      private function refreshEntry(param1:Boolean, param2:int, param3:Message) : Boolean
      {
         var _loc4_:ITextWindow = this.var_60.getListItemAt(param2) as ITextWindow;
         if(_loc4_ == null)
         {
            if(!param1)
            {
               return true;
            }
            _loc4_ = ITextWindow(this.var_128.getXmlWindow("msg_entry"));
            _loc4_.width = this.var_60.width;
            this.var_60.addListItem(_loc4_);
         }
         if(!param1)
         {
            _loc4_.height = 0;
            _loc4_.visible = false;
            return false;
         }
         _loc4_.visible = true;
         var _loc5_:String = param3.type == Message.const_654 || param3.type == Message.const_914 ? param3.time + ": " : "";
         _loc4_.text = _loc5_ + param3.messageText;
         _loc4_.color = this.getChatBgColor(param3.type);
         _loc4_.textColor = this.getChatTextColor(param3.type);
         this.refreshTextDims(_loc4_);
         return false;
      }
      
      private function onMinimailButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Minimail clicked");
         var _loc3_:Dictionary = new Dictionary();
         _loc3_["recipientid"] = "" + this.var_473.id;
         _loc3_["random"] = "" + Math.round(Math.random() * 100000000);
         if(this.var_128.isEmbeddedMinimailEnabled())
         {
            if(false)
            {
               ExternalInterface.call("FlashExternalInterface.openHabblet","minimail","#mail/compose/" + _loc3_["recipientid"] + "/" + _loc3_["random"] + "/");
            }
         }
         else
         {
            this.var_128.openHabboWebPage("link.format.mail.compose",_loc3_,param1);
         }
      }
      
      private function onFollowButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Follow clicked");
         this.var_128.send(new FollowFriendMessageComposer(this.var_473.id));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close clicked");
         this.var_128.conversations.closeConversation();
         this.var_128.messengerView.refresh();
      }
      
      private function getChatBgColor(param1:int) : uint
      {
         if(param1 == Message.const_654)
         {
            return 4294967295;
         }
         if(param1 == Message.const_914)
         {
            return 4292801535;
         }
         if(param1 == Message.const_1160)
         {
            return 4294927974;
         }
         if(param1 == Message.const_737)
         {
            return 4293454056;
         }
         if(param1 == Message.const_927)
         {
            return 4293454056;
         }
         if(param1 == Message.const_1149)
         {
            return 4288269465;
         }
         return 4291611852;
      }
      
      private function getChatTextColor(param1:int) : uint
      {
         if(param1 == Message.const_737)
         {
            return 4285887861;
         }
         if(param1 == Message.const_927)
         {
            return 4285887861;
         }
         return 4278190080;
      }
   }
}
