CXX=g++
CXXFLAGS= -MMD -Wall -Wextra -pedantic -g
OBJECTS=Cell.o Chamber.o Doorway.o Floor.o FloorTile.o Game.o Gold.o NonWalkableCell.o Passage.o WalkableCell.o Wall.o ba.o bd.o character.o dragon.o dragonHorde.o dwarf.o elf.o enemy.o goblin.o human.o item.o linkedList.o main.o merchant.o normalGold.o orc.o permaPotion.o ph.o phoenix.o playableCharacter.o potion.o rh.o smallHoard.o stairs.o tempPotion.o troll.o vampire.o wa.o warewolf.o wd.o
DEPENDS=${OBJECTS:.o=.d}
EXEC=cc3k

${EXEC} : ${OBJECTS}
	${CXX} ${CSSFLAGS} ${OBJECTS} -o ${EXEC}

-include ${DEPENDS}

clean:
	rm ${OBJECTS} ${EXEC}

.PHONY: clean