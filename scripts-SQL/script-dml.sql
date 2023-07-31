-- -- Inserindo clientes fictícios
-- INSERT INTO Cliente (nome, email, cpf, data_nascimento)
-- VALUES
--     ('Cliente 1', 'cliente1@email.com', '111.111.111-11', '1990-01-01'),
--     ('Cliente 2', 'cliente2@email.com', '222.222.222-22', '1985-05-15'),
--     ('Cliente 3', 'cliente3@email.com', '333.333.333-33', '2000-11-30');

-- -- Inserindo contas fictícias
-- INSERT INTO Conta (cliente_id, saldo, data_abertura)
-- VALUES
--     (1, 1000.00, '2023-01-01'),
--     (2, 500.00, '2023-02-15'),
--     (3, 1500.00, '2023-03-30');

-- -- Inserindo movimentações fictícias
-- INSERT INTO Movimentacao (conta_id, tipo_movimentacao, valor, data_movimentacao)
-- VALUES
--     (1, 'Depósito', 500.00, '2023-07-01 09:15:00'),
--     (1, 'Saque', 200.00, '2023-07-05 14:30:00'),
--     (2, 'Depósito', 100.00, '2023-07-10 11:00:00'),
--     (3, 'Saque', 300.00, '2023-07-20 16:45:00');


-- Joao
INSERT INTO "cliente" ("nome", "email", "cpf", "data_nascimento")
VALUES ('João', 'joao@example.com', '123.222.222-22', '1990-05-01');

INSERT INTO "conta" ("saldo", "data_abertura", "clienteClienteId")
VALUES (500, CURRENT_DATE, (SELECT "cliente_id" FROM "cliente" WHERE "email" = 'joao@example.com'));

INSERT INTO "movimentacao" ("tipo_movimentacao", "valor", "contaContaId")
VALUES ('debito', 200, (SELECT "conta_id" FROM "conta" WHERE "clienteClienteId" = (SELECT "cliente_id" FROM "cliente" WHERE "email" = 'joao@example.com')));


-- Pedro
INSERT INTO "cliente" ("nome", "email", "cpf", "data_nascimento")
VALUES ('Pedro', 'pedro@example.com', '123.456.789-10', '1980-02-01');

INSERT INTO "conta" ("saldo", "data_abertura", "clienteClienteId")
VALUES (1000, CURRENT_DATE, (SELECT "cliente_id" FROM "cliente" WHERE "email" = 'pedro@example.com'));

INSERT INTO "movimentacao" ("tipo_movimentacao", "valor", "contaContaId")
VALUES ('debito', 200, (SELECT "conta_id" FROM "conta" WHERE "clienteClienteId" = (SELECT "cliente_id" FROM "cliente" WHERE "email" = 'pedro@example.com')));
