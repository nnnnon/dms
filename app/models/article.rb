class Article < ActiveRecord::Base
     has_attached_file :article_file
     before_create :randomize_file_name
     has_many :comments, :dependent => :destroy
     #acts_as_taggable
     #acts_as_taggable_on :tag

  private
  def randomize_file_name
    #archives ���� has_attached_file :archives ʹ�õ�����
    extension = File.extname(article_file_file_name).downcase
    #����Ըĳ�����Ҫ���ļ�������������������ĵڶ������������˾Ϳ����ˡ�  
    self.article_file.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
  end
end
