require "rqrcode"
class TestController < ApplicationController
    def index
        @qr = RQRCode::QRCode.new("16")
        @svg = @qr.as_svg(
        color: "000",
        shape_rendering: "crispEdges",
        module_size: 11,
        standalone: true,
        use_path: true
        )
    end
end
