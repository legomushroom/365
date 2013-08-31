// Generated by CoffeeScript 1.6.2
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define('router', ['backbone', 'controllers/pagesController'], function(B, pc) {
    var Router, _ref;

    Router = (function(_super) {
      __extends(Router, _super);

      function Router() {
        _ref = Router.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      Router.prototype.routes = {
        '': 'main',
        'about': 'about',
        'about/': 'about'
      };

      Router.prototype.main = function() {
        return this.startPage(pc.main);
      };

      Router.prototype.about = function() {
        return this.startPage(pc.about);
      };

      Router.prototype.startPage = function(View) {
        return window.GiftShop.main.show(new View);
      };

      return Router;

    })(B.Router);
    return Router;
  });

}).call(this);
