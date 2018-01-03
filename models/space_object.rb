class SpaceObject
  attr_accessor :id, :title, :body, :image

  def self.open_connection

    conn = PG.connect(dbname: "blog")
  end

  def self.all


    conn = self.open_connection


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


end
