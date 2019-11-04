'use strict';

function ListSpace(){
  this._name = 'N/A';
  this._cost = 0;
  this._address = 'n/a';
  this._description = 'description';
};

ListSpace.prototype.setName = function(name){
  this._name = name;
};

ListSpace.prototype.name = function(){
  return this._name;
};

ListSpace.prototype.setCost = function(cost){
  this._cost = cost;
};

ListSpace.prototype.cost = function(){
  return this._cost;
};

ListSpace.prototype.setAddress = function(address){
  this._address = address;
};

ListSpace.prototype.address = function(){
  return this._address;
};

ListSpace.prototype.setDescription = function(description){
  this._description = description;
};

ListSpace.prototype.description = function(){
  return this._description;
};
