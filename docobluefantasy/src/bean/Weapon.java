package bean;

import java.io.Serializable;

public class Weapon implements Serializable {
	private String name;
	private int attack;
	private String skill;

	public Weapon(String name,int attack,String skill){

		this.name = name;
		this.attack = attack;
		this.skill = skill;

	}

	public String getName() {
		return name;
	}
	public int getAttack() {
		return attack;
	}
	public String getSkill() {
		return skill;
	}

}
