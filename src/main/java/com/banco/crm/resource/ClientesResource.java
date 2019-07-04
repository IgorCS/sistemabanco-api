package com.banco.crm.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.banco.crm.model.Cliente;
import com.banco.crm.repository.Clientes;


@RestController
@RequestMapping("/cliente")
public class ClientesResource {
	
	@Autowired
	private Clientes clientes;
	
	@GetMapping
	public List<Cliente> listar(){
		return this.clientes.findAll();
	}
}
