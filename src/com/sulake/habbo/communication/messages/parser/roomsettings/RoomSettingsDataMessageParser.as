package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.FlatControllerData;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.RoomSettingsData;
   
   public class RoomSettingsDataMessageParser implements IMessageParser
   {
       
      
      private var var_108:RoomSettingsData;
      
      public function RoomSettingsDataMessageParser()
      {
         super();
      }
      
      public function get data() : RoomSettingsData
      {
         return var_108;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_108 = new RoomSettingsData();
         var_108.roomId = param1.readInteger();
         var_108.name = param1.readString();
         var_108.description = param1.readString();
         var_108.doorMode = param1.readInteger();
         var_108.categoryId = param1.readInteger();
         var_108.maximumVisitors = param1.readInteger();
         var_108.maximumVisitorsLimit = param1.readInteger();
         var_108.tags = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_108.tags.push(param1.readString());
            _loc3_++;
         }
         var_108.controllers = [];
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            var_108.controllers.push(new FlatControllerData(param1));
            _loc5_++;
         }
         var_108.controllerCount = param1.readInteger();
         var_108.allowPets = param1.readInteger() == 1;
         var_108.allowFoodConsume = param1.readInteger() == 1;
         var_108.allowWalkThrough = param1.readInteger() == 1;
         return true;
      }
      
      public function flush() : Boolean
      {
         var_108 = null;
         return true;
      }
   }
}
