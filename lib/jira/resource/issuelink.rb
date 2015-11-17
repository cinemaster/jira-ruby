module JIRA
  module Resource
    class IssuelinkFactory < JIRA::BaseFactory ; end

    class Issuelink < JIRA::Base
      def self.endpoint_name
        'issueLink'
      end
    end
  end
end
