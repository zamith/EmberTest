module Tilt
  class HandlebarsSlimTemplate < ::Slim::Template; end

  register HandlebarsSlimTemplate, :handlebars_slim
end

class Slim::EmbeddedEngine
  register :handlebars, TagEngine, tag: :script, attributes: { type: "text/x-handlebars" }
  register :handlebars_slim, TagEngine, tag: :script, attributes: { type: "text/x-handlebars" }, engine: StaticTiltEngine
end
