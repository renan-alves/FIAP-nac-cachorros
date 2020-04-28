package br.com.fiap.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import br.com.fiap.model.CachorroModel;

public class CachorroRepository {

	private static CachorroRepository instance;
	
	private static Map<Long, CachorroModel> cachorros;
	
	public static CachorroRepository getInstance() {
		
		if (instance == null) {
			instance = new CachorroRepository();
		}
		return instance;
	}

	private CachorroRepository() {

		cachorros = new HashMap<Long, CachorroModel>();
		
		cachorros.put(1L, new CachorroModel(1L, "Mick", "Maltês", "M", 3, true, "Bagunceiro"));
		cachorros.put(14L, new CachorroModel(14L, "Jade", "Pinscher", "F", 9, true, "Ataca todo mundo e quer matar tudo que se move"));
		cachorros.put(15L, new CachorroModel(15L, "Mel", "Lhasa-apso", "F", 9, true, "Fofa demais"));
		cachorros.put(4L, new CachorroModel(4L, "Tobi", "Vira-Lata", "M", 2, true, "Muito dócil e obediente"));
		cachorros.put(16L, new CachorroModel(16L, "Toninho", "Vira-Lata", "M", 2, false, "Cachorro carinhoso que gosta de dar abraços"));
	}

	public ArrayList<CachorroModel> findAll() {
		return new ArrayList<CachorroModel>(cachorros.values());
	}

	public CachorroModel findById(long id) {
		return cachorros.get(id);
	}

	public void save(CachorroModel cachorroModel) {
		Long newId = (long) (cachorros.size() + 1);
		cachorroModel.setId(newId);
		cachorros.put(newId, cachorroModel);
	}
	
	public void update(CachorroModel cachorroModel) {
		cachorros.put(cachorroModel.getId(), cachorroModel);
	}
	
	public void deleteById(long id) {
		cachorros.remove(id);
	}
	
}
