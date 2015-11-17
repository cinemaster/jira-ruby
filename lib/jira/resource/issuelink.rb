module JIRA
  module Resource
    class IssueLinktypeFactory < JIRA::BaseFactory ; end
    class IssueLinktype < JIRA::Base ; end
    class IssueLinkFactory < JIRA::BaseFactory ; end

    class IssueLink < JIRA::Base
      has_one :type, :class => JIRA::Resource::IssueLinktype
      has_one :inwardIssue, :class => JIRA::Resource::Issue
      has_one :outwardIssue, :class => JIRA::Resource::Issue

      def self.endpoint_name
        'issueLink'
      end
    end
  end

  class Client
    def IssueLink
      JIRA::Resource::IssueLinkFactory.new(self)
    end
    def IssueLinktype
      JIRA::Resource::IssueLinktypeFactory.new(self)
    end
  end
end
