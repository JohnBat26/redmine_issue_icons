require 'redmine'

Redmine::Plugin.register :redmine_issue_icons do
  name 'Redmine Issue Icons'
  author 'Eugene Batogov'
  description 'This plugin add icons to redmine issue table'
  version '1.0.0'
  url 'https://github.com/johnbat26/redmine_issue_icons.git'
  author_url 'https://github.com/johnbat26/'
end

module RedmineIssueIcons
  class RedmineToolbarHookListener < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context)
      stylesheet_link_tag('issue_icons', :plugin => :redmine_issue_icons)
    end
  end
end