<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function get_nama($kd)
	{
		if ( $kd != null ) {
			return $this->db->get_where('nama_barang', ['kd_nama'=>$kd])->row_array();
		} else {
			$this->db->order_by('nama', 'ASC');
			return $this->db->get('nama_barang')->result_array(); 
		}
	}

	public function insert_nama($data)
	{
		$this->db->insert('nama_barang', $data);
		if($this->db->affected_rows()) {
			return 'success';
		} else {
			return 'error';
		}
	}

	public function update_nama($kd, $data)
	{
		$this->db->set($data);
		$this->db->where('kd_nama', $kd);
		$this->db->update('nama_barang');
		if($this->db->affected_rows()) {
			return "success";
		} else {
			return "error";
		}
	}

	public function delete_nama($kd)
	{
		$used =  $this->db->get_where('barang', ['nama_kd'=>$kd])->num_rows();
		if ($used < 1) {
			$this->db->delete('nama_barang', ['kd_nama'=>$kd]);
			if($this->db->affected_rows()) {
				return "success";
			} else {
				return "error";
			}
		} else {
			return "used";
		}
	}

	public function get_ruangan($kd)
	{
		if ( $kd != null ) {
			return $this->db->get_where('ruangan', ['kd_ruang'=>$kd])->row_array();
		} else {
			return $this->db->get('ruangan')->result_array(); 
		}
	}

	public function insert_ruangan($data)
	{
		$this->db->insert('ruangan', $data);
		if($this->db->affected_rows()) {
			return 'success';
		} else {
			return 'error';
		}
	}

	public function update_ruangan($kd, $data)
	{
		$this->db->set($data);
		$this->db->where('kd_ruang', $kd);
		$this->db->update('ruangan');
		if($this->db->affected_rows()) {
			return "success";
		} else {
			return "error";
		}
	}

	public function delete_ruangan($kd)
	{
		$used = $this->db->get_where('barang', ['ruang_kd'=>$kd])->num_rows();
		if ($used < 1) {
			$this->db->delete('ruangan', ['kd_ruang'=>$kd]);
			if( $this->db->affected_rows() ) {
				return "success";
			} else {
				return "error";
			}
		} else {
			return "used";
		}
	}

	public function get_kondisi($kd)
	{
		if (!$kd) {
			return $this->db->get('kondisi')->result_array();
		} else {
			return $this->db->get_where('kondisi', ['kd_kondisi'=>$kd])->row_array();
		}
	}

	public function get_kondisi_laporan($kd)
	{
		if (!$kd) {
			return $this->db->get('kondisi');
		} else {
			return $this->db->get_where('kondisi', ['kd_kondisi'=>$kd]);
		}
	}

	public function insert_kondisi($data)
	{
		$this->db->insert('kondisi',$data);
		if ($this->db->affected_rows()) {
			return "success";
		} else {
			return "error";
		}
	} 

	public function update_kondisi($kd, $data)
	{
		$this->db->set($data);
		$this->db->where('kd_kondisi', $kd);
		$this->db->update('kondisi');
		if($this->db->affected_rows()) {
			return "success";
		} else {
			return "error";
		}
	}

	public function delete_kondisi($kd)
	{
		$used = $this->db->get_where('barang', ['kondisi_kd'=>$kd])->num_rows();
		if ($used < 1) {
			$this->db->delete('kondisi', ['kd_kondisi'=>$kd]);
			if($this->db->affected_rows()) {
				return "success";
			} else {
				return "error";
			}
		} else {
			return "used";
		}
	}

	public function get_role($kd)
	{
		if (!$kd) {
			return $this->db->get('role')->result_array();
		} else {
			return $this->db->get_where('role', ['kd_role'=>$kd])->row_array();
		}
	}

	public function insert_role($data)
	{
		$this->db->insert('role',$data);
		if ($this->db->affected_rows()) {
			return "success";
		} else {
			return "error";
		}
	}

	public function update_role($kd, $data)
	{
		$this->db->set($data);
		$this->db->where('kd_role', $kd);
		$this->db->update('role');
		if($this->db->affected_rows()) {
			return "success";
		} else {
			return "error";
		}
	}

	public function delete_role($kd)
	{
		$used = $this->db->get_where('user', ['role'=>$kd])->num_rows();
		if ($used < 1) {
			$this->db->delete('role', ['kd_role'=>$kd]);
			if($this->db->affected_rows()) {
				return "success";
			} else {
				return "error";
			}
		} else {
			return "used";
		}
	}



	// public function get_ruangan_in_kondisi_barang_notnull_stok()
	// {
	// 	return $this->db->query('SELECT DISTINCT `kd_ruang`, `ruangan`.`nama` AS `nama` 
	// 		FROM `ruangan` 
	// 		JOIN `kondisi_barang` ON `ruangan`.`kd_ruang` = `kondisi_barang`.`ruangan_kd` 
	// 		JOIN `barang` ON `barang`.`kd_barang`=`kondisi_barang`.`barang_kd` 
	// 		WHERE `barang`.`stok`> 0 
	// 		ORDER BY `ruangan`.`kd_ruang` ASC')->result_array();
	// }

	public function get_ruangan_by_barang($kd_barang)
	{
		return $this->db->query('SELECT DISTINCT `kd_ruang`, `ruangan`.`nama` 
			FROM `kondisi_barang` 
			JOIN `ruangan` ON `kondisi_barang`.`ruangan_kd`=`ruangan`.`kd_ruang` 
			WHERE `kondisi_barang`.`barang_kd`= "'.$kd_barang.'" ORDER BY `kd_ruang` ')->result_array();
	}

	public function get_kondisi_by_barangruangan($barang,$ruangan)
	{
		return $this->db->query('SELECT DISTINCT `kondisi_barang`.`kondisi_id` AS `id`, `kondisi` 
			FROM `kondisi_barang` 
			JOIN `kondisi` ON `kondisi_barang`.`kondisi_id`=`kondisi`.`id` 
			WHERE `kondisi_barang`.`barang_kd`= "'.$barang.'" 
			AND `kondisi_barang`.`ruangan_kd`= "'.$ruangan.'" 
			ORDER BY `id` ')->result_array();
	}

	// public function get_kondisi_in_kondisi_barang()
	// {
	// 	return $this->db->query('SELECT DISTINCT `kondisi_id` AS `id`, `kondisi` 
	// 		FROM `kondisi_barang` 
	// 		JOIN `kondisi` ON `kondisi_barang`.`kondisi_id`=`kondisi`.`id` 
	// 		ORDER BY `id` ')->result_array();
	// }

	public function find_kode_master($field, $tabel, $start=null, $kd=null )
	{
		$this->db->select($field.' as kode');
		if ($kd != null) {
			$this->db->like($field, $kd, 'after');
		}
		$codes = $this->db->get($tabel)->result_array();

		$no = 1;
		if (!$codes) {
			return $no;
		} else {
			if ($start) {
				foreach ($codes as $c) {
					if (intval(substr($c['kode'], $start)) != $no) {
						break;
					} else {
						$no++;
					}
				}
			} else {
				foreach ($codes as $c) {
					if (intval(substr($c['kode'], 1)) != $no) {
						break;
					} else {
						$no++;
					}
				}
			}
			return $no;
		}
	}

	public function count_table($tabel)
	{
		return $this->db->count_all($tabel);
	}

	// public function kode_max($field, $tabel, $kd=null)
	// {
	// 	$this->db->select_max($field);
	// 	if ($kd != null) {
	// 		$this->db->like($field, $kd, 'after');
	// 	}
	// 	return $this->db->get($tabel)->row_array()[$field];
	// }

}

/* End of file Public_model.php */
/* Location: ./application/models/Public_model.php */