module ApplicationHelper
  def default_meta_tags
    {
      site: 'mitano',
      title: 'mitano - あなたが見ている海外ドラマの視聴記録を簡単に',
      reverse: true,
      charset: 'utf-8',
      description: 'ゲームオブスローンズやプリズンブレイクなど、あなたが見ている海外ドラマの視聴記録が簡単に可能になるサービス「mitano」。みんなの視聴リストや感想、レビューを元に、面白い海外ドラマに出会いましょう',
      keywords: '海外ドラマ,感想,視聴記録',
      canonical: 'http://www.mitano.jp/',
      separator: '|',
      icon: [
        { href: image_url('mitano_favcon') },
        { href: image_url('mitano'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'mitano',
        title: 'mitano - 海外ドラマの視聴記録が簡単に',
        description: 'ゲームオブスローンズやプリズンブレイクなど、あなたが見ている海外ドラマの視聴記録が簡単に可能になるサービス「mitano」。みんなの視聴リストや感想、レビューを元に、面白い海外ドラマに出会いましょう',
        type: 'website',
        url: 'http://www.mitano.jp/',
        image: image_url('mitano'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary',
        site: '@mitano4',
      }
    }
  end
  def current_user?(user)
    user == current_user
  end
end