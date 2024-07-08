module Themes
  module InnovisTheme
    module MainHelper
      def self.included(klass)
        klass.helper_method [:innovis_theme]
        rescue StandardError
        ''
      end

      def innovis_theme_settings(theme)
        # callback to save custom values of fields added in my_theme/views/admin/settings.html.erb
      end

      def innovis_theme
        res = []
        current_site.the_post_types.decorate.each { |p| res << "<option value='#{p.the_slug}'>#{p.the_title}</option>" }
        res.join('').html_safe
      end

      # callback called after theme installed
      def innovis_theme_on_install_theme(theme)
        group = theme.add_field_group({ name: 'Home Page', slug: 'home_page' })
        group.add_field({ 'name' => 'Home Page', 'slug' => 'home_page', description: 'Select your home page' },
                        { field_key: 'posts', post_types: 'all' })
        group.add_field({ 'name' => 'Recent items from', 'slug' => 'recent_post_type' },
                        { field_key: 'select_eval', command: 'innovis_theme' })
        group.add_field({ 'name' => 'Maximum of items', 'slug' => 'home_qty' },
                        { field_key: 'numeric', default_value: 6 })

        group = theme.add_field_group({ name: 'Footer', slug: 'footer' })
        group.add_field({ 'name' => 'Column Left', 'slug' => 'footer_left' },
                        { field_key: 'editor', translate: true,
                          default_value: '<h4>My Bunker</h4><p>Some Address 987,<br> +34 9054 5455, <br> Madrid, Spain. </p>' })
        group.add_field({ 'name' => 'Column Center', 'slug' => 'footer_center' },
                        { field_key: 'editor', translate: true,
                          default_value: "<h4>My Links</h4> <p><a href='#'>Dribbble</a><br> <a href='#'>Twitter</a><br> <a href='#'>Facebook</a></p>" })
        group.add_field({ 'name' => 'Column Right', 'slug' => 'footer_right' },
                        { field_key: 'editor', translate: true,
                          default_value: '<h4>About Theme</h4><p>This cute theme was created to showcase your work in a simple way. Use it wisely.</p>' })
      end

      # callback executed after theme uninstalled
      def innovis_theme_on_uninstall_theme(theme);
        theme.destroy
      end
    end
  end
end
