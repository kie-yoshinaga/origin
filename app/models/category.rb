class Category < ActiveHash::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'アニメ' },
    { id: 4, name: 'コメディ' },
    { id: 5, name: 'ドキュメンタリー' },
    { id: 6, name: 'ドラマ' },
    { id: 7, name: 'ファンタジー' },
    { id: 8, name: 'ホラー' },
    { id: 9, name: '戦争' },
    { id: 10, name: 'ミステリー' },
    { id: 11, name: 'ロマンス' },
    { id: 10, name: 'SF' },
    { id: 11, name: 'その他' },
  ]

  include ActiveHash::Associations
  #has_many :reviews
  #has_many :users

end