class UserAgent
  module Browsers
    class GoogleImageProxy < Base

      def self.extend?(agent)
        agent.last && agent.last.comment && agent.last.comment[0] =~ /googleimageproxy|ggpht\.com/i
      end

      def browser
        "Google Image Proxy"
      end

      def version
        last.version
      end

      def platform
        nil
      end

      def os
        nil
      end
    end
  end
end
