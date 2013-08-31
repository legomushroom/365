// Generated by CoffeeScript 1.6.2
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define('views/pages/main', ['views/pages/PageView', 'backbone'], function(PageView, B) {
    var Main, _ref;

    Main = (function(_super) {
      __extends(Main, _super);

      function Main() {
        _ref = Main.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      Main.prototype.template = '#main-template';

      Main.prototype.render = function() {
        var Collection, Model, _ref1, _ref2;

        Main.__super__.render.apply(this, arguments);
        Model = (function(_super1) {
          __extends(Model, _super1);

          function Model() {
            _ref1 = Model.__super__.constructor.apply(this, arguments);
            return _ref1;
          }

          Model.prototype.backend = 'Users';

          return Model;

        })(B.Model);
        Collection = (function(_super1) {
          __extends(Collection, _super1);

          function Collection() {
            _ref2 = Collection.__super__.constructor.apply(this, arguments);
            return _ref2;
          }

          Collection.prototype.model = Model;

          Collection.prototype.backend = 'Users';

          return Collection;

        })(B.Collection);
        this.collection = new Collection;
        this.collection.url = 'Users';
        return this.collection.fetch();
      };

      return Main;

    })(PageView);
    return Main;
  });

}).call(this);
