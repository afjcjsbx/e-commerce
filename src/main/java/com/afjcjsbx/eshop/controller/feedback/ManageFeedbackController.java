package com.afjcjsbx.eshop.controller.feedback;

import com.afjcjsbx.eshop.bean.ManageFeedbackBean;
import com.afjcjsbx.eshop.entity.feedback.Review;

import java.util.List;

/**
 * Created by Davide on 13/02/2017.
 *
 * Il Controllore è singleton
 */
public class ManageFeedbackController {

	private static ManageFeedbackController instance;

	public static ManageFeedbackController getInstance() {
		if (instance == null)
			instance = new ManageFeedbackController();
		return instance;
	}

    private ManageFeedbackController() {
    }

    public boolean addReview(ManageFeedbackBean manageFeedbackBean) { // TODO passo tutto il bean o posso passare solo i suoi parametri presi tramite getters? Ora starei violando la legge di Demetra
        // chiama metodo interfaccia dao
    }

    public List<Review> retrieveReviews(ManageFeedbackBean manageFeedbackBean) {
        // chiama metodo interfaccia dao
    }



    /**
	 * Aggiunge un commento alla locazione se l'utente ha effettuato almeno una
	 * prenotazione
	 * 
	 * @param feedbackBean
	 *            bean contenente l'id della locazione,il nickname di chi vuole
	 *            commentare e il commento
	 * @return true se il commento viene effettuato correttamente, false
	 *         altrimenti
	 *//*
	public boolean commentaLocazione(FeedbackBean feedbackBean) {
		if (feedbackBean.getCommento() == null || feedbackBean.getIdLocazione() == 0
				|| feedbackBean.getNickname() == null)
			return false;
		try {

			List<Prenotazione> pren = PrenotazioneDAO.getInstance()
					.cercaPrenotazioniDaIdUtente(feedbackBean.getNickname());
			boolean prenotato = false;
			int idLoc=0;
			for (Prenotazione p : pren) {
				if (p.getLocazioneId() == feedbackBean.getIdLocazione()) {
					prenotato = true;
					idLoc=p.getLocazioneId();
					break;
				}
			}
			if (prenotato){
				Notifica notif=new Notifica();
				notif.setUtenteMittente(feedbackBean.getNickname());
				Locazione loc;
				try {
					loc = Locazione.cercaLocazioneDaId(idLoc);
				} catch (SQLException e) {
					loc=null;
				}
				notif.setUtenteDestinatario(loc.getProprietario().getNickName());
				notif.setOggettoNotifica("Nuovo Feedback ricevuto");
				notif.setMessaggio("L'utente "+feedbackBean.getNickname()+" ha lasciato un feedback sulla tua locazione: "+loc.getNomeLoc());
				notif.salva();
				return Feedback.commentaLocazione(new Feedback(feedbackBean.getIdLocazione(), new UtenteCliente(feedbackBean.getNickname()), feedbackBean.getCommento()));
			}return false;
		} catch (DatabaseException e) {
			return false;
		}

	}

	*//**
	 * Verifica se l'utente e la password sono corretti
	 * 
	 * @param feedbackBean
	 *            bean contenente il nome utente e la password
	 * @return true se la combinazione � corretta
	 *//*
	public boolean verificaUtente(FeedbackBean feedbackBean) {
		try {
			if (feedbackBean.getNickname().equals("") || feedbackBean.getPassword().equals(""))
				return false;
			return UtenteGenerico.esisteUtente(feedbackBean.getNickname(), feedbackBean.getPassword());
		} catch (DatabaseException e) {
			return false;
		}

	}

	*//**
	 * Ricerca della locazione corrispondente ad un determinato nome
	 * 
	 * @param nomeLocazione
	 *            nome della locazione da cercare
	 * @return la locazione corrispondente, null altrimenti
	 *//*
	public Locazione cercaLocazioneDaNome(String nomeLocazione) {

		try {
			if (nomeLocazione.equals(""))
				return null;
			return Locazione.cercaLocazioneDaNome(nomeLocazione);
		} catch (DatabaseException e) {
			return null;

		}

	}

	*//**
	 * Controllo che restituisce la lista di feedback di una certa locazione
	 * 
	 * @param locazioneId
	 *            id della locazione su cui cercare i feedback
	 * @return la lista dei Feedback, null in caso non sono presenti
	 *//*
	public List<Feedback> dammiFeedback(int locazioneId) {
		try {
			if (locazioneId == 0)
				return null;
			return Feedback.dammiFeedback(locazioneId);

		} catch (DatabaseException e) {
			return null;

		}
	}*/

}
