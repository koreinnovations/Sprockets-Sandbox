class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :specific_asset_path
  before_filter :load_js

  def specific_asset_path
    name = self.class.name
    @controller_with_path = name.sub(/Controller$/, '').underscore
  end

  def load_js

    @nav = {
      'Home' => {
        home_index_path => 'Index',
        home_history_path => 'History',
      },
      'Forum' => {
        forum_index_path => 'Index',
        forum_post_path => 'Post'
      },
      'Members' => {
        members_index_path => 'Index',
        members_events_path => 'Events',
        members_admin_index_path => 'Admin Index',
      },
    }

  end

end
