class AddCommentsCountToImpressions < ActiveRecord::Migration[5.1]
  class MigrationUser < ApplicationRecord
    self.table_name = :impressions
  end

  def up
    _up
  rescue => e
    _down
    raise e
  end

  def down
    _down
  end

  private

  def _up
    MigrationUser.reset_column_information

    add_column :impressions, :comments_count, :integer, null: false, default: 0 unless column_exists? :impressions, :comments_count
  end

  def _down
    MigrationUser.reset_column_information

    remove_column :impressions, :comments_count if column_exists? :impressions, :comments_count
  end
end
