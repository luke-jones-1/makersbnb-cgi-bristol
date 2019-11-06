'use strict';

function User() {
  var pg = require("pg");
  console.log('putting the DB in DeadBeat.....');
  var connectionString = "postgres://Student:@localhost/ip:5432/makersbnb_test";
  pg.connect(connectionString);
}

User.prototype.create() {

}

User.prototype.signIn() {

}

User.prototype.dataRequest(){

}
