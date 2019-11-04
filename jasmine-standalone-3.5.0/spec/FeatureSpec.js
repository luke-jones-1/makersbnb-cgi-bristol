'use strict';

describe('ListSpace',function(){
  var listspace;
  beforeEach(function(){
    listspace = new ListSpace();
  });
  describe('name tests',function(){
    it('can set name',function(){
      listspace.setName('dave');
      expect(listspace.name()).toEqual('dave');
    });
    it('can view name',function(){
      expect(listspace.name()).toEqual('N/A');
    });
  });
  describe('cost tests',function(){
    it('can set cost',function(){
      listspace.setCost(11);
      expect(listspace.cost()).toEqual(11);
    });
    it('can view cost',function(){
      expect(listspace.cost()).toEqual(0);
    });
  });
  describe('address tests',function(){
    it('can set address',function(){
      listspace.setAddress('pc0 0cp');
      expect(listspace.address()).toEqual('pc0 0cp');
    });
    it('can view address',function(){
      expect(listspace.address()).toEqual('n/a');
    });
  });
  describe('description tests',function(){
    it('can set description',function(){
      listspace.setDescription('this is a description');
      expect(listspace.description()).toEqual('this is a description');
    });
    it('can view description',function(){
      expect(listspace.description()).toEqual('description');
    });
  });
});
