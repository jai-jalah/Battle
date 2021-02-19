class Player
    attr_reader :name, :hp
    ATTACK = 10
    DEFAULT_HP = 60
    def initialize(name, hp = DEFAULT_HP)
        @name = name
        @hp = hp
    end

    def attack(name)
      name.receive_damage
    end

    def receive_damage
      @hp -= ATTACK
    end
end
