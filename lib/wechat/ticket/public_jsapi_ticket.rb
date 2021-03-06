require 'wechat/ticket/jsapi_base'

module Wechat
  module Ticket
    class PublicJsapiTicket < JsapiBase
      def refresh
        data = client.get('ticket/getticket', params: { access_token: access_token.token, type: 'jsapi' })
        write_ticket_to_file(data)
        read_ticket_from_file
      end
    end
  end
end
