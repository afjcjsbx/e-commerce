package com.afjcjsbx.eshop.entity;



public abstract class Entity {
    // TODO necessaria? L'id lo potremmo mettere come attributo direttamente sulle classi, come fanno tutti gli altri progetti

	protected int id;


	public Entity() {
	}

	public Entity(int id) {
		this.id = id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}

}
