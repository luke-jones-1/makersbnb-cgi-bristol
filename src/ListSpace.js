'use strict';
var pg = require("pg");
var connectionString = "postgres://Student:@localhost:5432/makersbnb_test";
var pgClient = pg.Client(connectionString);



function ListSpace(name='', cost=0, address='', description=''){
  this.name = name;
  this.cost = cost;
  this.address = address;
  this.description = description;
};

ListSpace.prototype.all = function(){
  var query = pgClient.query('SELECT * FROM listings;');
  return query;
};
