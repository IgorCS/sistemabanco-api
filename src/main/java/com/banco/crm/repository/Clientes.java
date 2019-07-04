package com.banco.crm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.banco.crm.model.Cliente;

public interface Clientes extends JpaRepository<Cliente, Long> {

}
