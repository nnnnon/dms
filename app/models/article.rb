class Article < ActiveRecord::Base
     has_attached_file :article_file
     before_create :randomize_file_name
     has_many :comments, :dependent => :destroy
     #acts_as_taggable
     #acts_as_taggable_on :tag

  private
  def randomize_file_name
    #archives 就是 has_attached_file :archives 使用的名字
    extension = File.extname(article_file_file_name).downcase
    #你可以改成你想要的文件名，把下面这个方法的第二个参数随便改了就可以了。  
    self.article_file.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")
  end
end
