class ApplicationController < ActionController::Base
  protect_from_forgery


  before_filter :load_js

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
      },
    }

  end

end
