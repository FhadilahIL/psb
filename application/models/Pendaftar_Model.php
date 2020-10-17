<?php

class Pendaftar_Model extends CI_Model
{
    function tampil_data_pendaftar()
    {
        // $this->db->join('tb_pembayaran', 'tb_pembayaran.id_pendaftar = tb_pendaftar.id_pendaftar', 'left');
        // $this->db->order_by('id_tahun_ajaran', 'desc');
        return $this->db->query("SELECT *, tb_pendaftar.id_pendaftar FROM tb_pendaftar LEFT JOIN tb_pembayaran ON tb_pendaftar.id_pendaftar = tb_pembayaran.id_pendaftar LEFT JOIN tb_staff ON tb_staff.id_staff = tb_pembayaran.id_staff ORDER BY id_tahun_ajaran DESC");
    }

    function tampil_beasiswa_pendaftar($id_pendaftar)
    {
        $this->db->join('tb_beasiswa_pendaftar', 'tb_beasiswa_pendaftar.id_pendaftar = tb_pendaftar.id_pendaftar', 'inner');
        $this->db->where('md5(tb_pendaftar.id_pendaftar)', $id_pendaftar);
        return $this->db->get('tb_pendaftar');
    }

    function tampil_prestasi_pendaftar($id_pendaftar)
    {
        $this->db->join('tb_prestasi_pendaftar', 'tb_prestasi_pendaftar.id_pendaftar = tb_pendaftar.id_pendaftar', 'inner');
        $this->db->where('md5(tb_pendaftar.id_pendaftar)', $id_pendaftar);
        return $this->db->get('tb_pendaftar');
    }

    function tampil_pengasuh_pendaftar($id_pendaftar)
    {
        $this->db->join('tb_pengasuh_pendaftar', 'tb_pengasuh_pendaftar.id_pendaftar = tb_pendaftar.id_pendaftar', 'inner');
        $this->db->where('md5(tb_pendaftar.id_pendaftar)', $id_pendaftar);
        return $this->db->get('tb_pendaftar');
    }

    function cari_data_pendaftar($id_pendaftar)
    {
        $this->db->where('md5(id_pendaftar)', $id_pendaftar);
        return $this->db->get('tb_pendaftar');
    }

    function cari_nisn_pendaftar($nisn)
    {
        $this->db->where('nisn', $nisn);
        return $this->db->get('tb_pendaftar');
    }

    function ganti_password($password, $nisn, $nama)
    {
        $this->db->set('password', $password);
        $this->db->where('nisn', $nisn);
        $this->db->where('nama', $nama);
        return $this->db->update('tb_pendaftar');
    }

    function simpan_registrasi($data)
    {
        return $this->db->insert('tb_pendaftar', $data);
    }

    function hapus_prestasi($id_prestasi)
    {
        $this->db->where('id_prestasi_pendaftar', $id_prestasi);
        return $this->db->delete('tb_prestasi_pendaftar');
    }

    function hapus_beasiswa($id_beasiswa)
    {
        $this->db->where('id_beasiswa_pendaftar', $id_beasiswa);
        return $this->db->delete('tb_beasiswa_pendaftar');
    }

    function tampil_pendaftar_pertahun($id_tahun_ajaran)
    {
        $this->db->where('id_tahun_ajaran', $id_tahun_ajaran);
        return $this->db->get('tb_pendaftar');
    }
}
