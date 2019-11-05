'use strict';

function ListSpace(name='', cost=0, address='', description=''){
  this.name = name;
  this.cost = cost;
  this.address = address;
  this.description = description;
};

ListSpace.prototype.all = function(){
  var pg = require(‘pg’);
  var connectionString = "postgres://Student:@localhost/ip:5432/makersbnb_test";
  var pgClient = new pg.Client(connectionString);
  var query = pgClient.query('SELECT * FROM listings;');
  return query;
};
