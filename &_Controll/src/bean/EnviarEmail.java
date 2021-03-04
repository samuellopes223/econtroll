package bean;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EnviarEmail {

    public void enviar(TempoSessao t) {

        Properties props = new Properties();
        /**
         * Parâmetros de conexão com servidor Gmail
         */
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("contatooecontroll@gmail.com",
                        "91565104");
            }
        });

        /**
         * Ativa Debug para sessão
         */
        session.setDebug(true);

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("samuelaraujolse@gmail.com"));
            //Remetente

            Address[] toUser = InternetAddress //Destinatário(s)
                    .parse("samuelaraujolse@gmail.com");

            message.setRecipients(Message.RecipientType.TO, toUser);
            message.setSubject("Relatório de Funcionario");//Assunto
            String duracao = t.getDuracao();
            String dataentrada = t.getData_entrada();
            String datasaida = t.getData_saida();
            String id = t.getId_usuario();
            message.setText("Olá Administrador, Segue o Relatório final do Funcionario  \n \n \n " + "Id Usuario: "+id+"\n" + "Data Entrada: " +dataentrada+ "\n" + "Data Saida: " +datasaida+ "\n" + "Duração: " +duracao+ "\n" + " \n\n\n" + "Att" + "\n" + "&-Controll" + "\n");

            /**
             * Método para enviar a mensagem criada
             */
            Transport.send(message);

            System.out.println("Enviado com Sucesso!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}
