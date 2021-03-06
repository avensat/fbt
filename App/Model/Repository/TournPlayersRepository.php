<?php

namespace App\Model\Repository;

use Doctrine\ORM\Query\AST\Functions\IdentityFunction;

use App\Model\Entity\Tournplayers;
use Doctrine\ORM\EntityRepository;
use App\Model\Entity\Players;
use App\Model\Entity\Tournament;
/**
 * User repository
 */
class TournPlayersRepository extends EntityRepository
{

    public function findTournPlayers(Players $players, Tournament $tournament) {
        $toPlayers = $this->findOneBy(array( "idtournament" => $tournament, 'idplayers' => $players));
        return $toPlayers ? $toPlayers : FALSE;
    }
    
    public function findTournPlayersById($idTournPlayers) {
        $toPlayers = $this->findOneBy(array( "idtournplayers" => $idTournPlayers));
        return $toPlayers ? $toPlayers : FALSE;
    }

    public function findTournAdmins($tournament) {
    	$toAdmins = $this->findBy(array( "idtournament" => $tournament, 'isadmin' => true));
    	return $toAdmins ? $toAdmins : FALSE;
    }

    /**
     * Saves tournament to the database.
     *
     * @param Tournament
     */
    public function remove(Tournplayers $tournPlayer)
    {
        $this->_em->remove($tournPlayer);
        $this->_em->flush();
    }
    
    /**
     * Saves players tournament to the database.
     *
     * @param Tournament
     */
    public function save(Tournplayers $tournPlayer)
    {
        $this->_em->persist($tournPlayer);
        $this->_em->flush();
    }


}