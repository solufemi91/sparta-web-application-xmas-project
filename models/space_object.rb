class SpaceObject
  attr_accessor :id, :title, :body, :image

  def self.open_connection

    conn = PG.connect(dbname: "blog")
  end

  def self.all


    conn = SpaceObject.open_connection


    sql = "SELECT id,title,body,image FROM spaceObjects ORDER BY id DESC"


    results = conn.exec(sql)


    spaceObjects = results.map do |spaceObject|
      self.hydrate(spaceObject)
    end

  end

  def self.hydrate(spaceObject_data)


    spaceObject = SpaceObject.new


    spaceObject.id = spaceObject_data['id']
    spaceObject.title = spaceObject_data['title']
    spaceObject.body = spaceObject_data['body']
    spaceObject.image = spaceObject_data['image']

    spaceObject
  end


  def save


    conn = SpaceObject.open_connection


    if(self.id)
    sql = "UPDATE spaceObjects SET title='#{self.title}', body='#{self.body}', image='#{self.image}' WHERE id = #{self.id}"

    else
      sql = "INSERT INTO spaceObjects (title, body, image) VALUES ('#{self.title}', '#{self.body}',' #{self.image}')"
    end


    conn.exec(sql)
  end


end
