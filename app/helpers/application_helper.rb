module ApplicationHelper
  def default_meta_tags
    {
      site: 'mitano',
      title: 'mitano - 海外ドラマの感想を共有するSNS',
      reverse: true,
      charset: 'utf-8',
      description: 'ゲームオブスローンズやプリズンブレイクなど、今話題の海外ドラマの感想をエピソード単位でシェアできるSNS「mitano」。みんなの感想やレビューを元に、面白い海外ドラマに出会いましょう',
      keywords: '海外ドラマ,感想',
      canonical: 'http://www.mitano.jp/',
      separator: '|',
      icon: [
        { href: image_url('mitano_favcon') },
        { href: image_url('mitano'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'mitano',
        title: 'mitano - 海外ドラマの感想を共有するSNS',
        description: 'ゲームオブスローンズやプリズンブレイクなど、今話題の海外ドラマの感想をエピソード単位でシェアできるSNS「mitano」。みんなの感想やレビューを元に、面白い海外ドラマに出会いましょう',
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