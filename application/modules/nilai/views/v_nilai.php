<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box">
                        <div class="box-header">
                            <center>
                                <h3 class="box-title" id="judul">Daftar Semua Nilai Dosen</h3>
                            </center>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <?= $this->session->flashdata('message1'); ?>
                            <div class="table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Penilai</th>
                                            <th>Fakultas</th>
                                            <th>Prodi</th>
                                            <th>NIDN</th>
                                            <th>Nama Dosen</th>
                                            <th>Matakuliah</th>
                                            <th>Nilai</th>
                                            <th>Bobot</th>
                                            <th>Semester</th>
                                            <th>TA</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php //var_dump($all_prdin); 
                                        ?>
                                        <?php
                                        $no = 0;
                                        foreach ($all_nilai as $nl) :
                                            $no++ ?>
                                        <tr>
                                            <td><?= $no ?></td>
                                            <td><?= $nl->nama_mahasiswa; ?></td>
                                            <td><?= $nl->nama_fakultas; ?></td>
                                            <td><?= $nl->nama_prodi; ?></td>
                                            <td><?= $nl->NIDN; ?></td>
                                            <td><?= $nl->nama_dosen; ?></td>
                                            <td><?= $nl->nama_matakuliah; ?></td>
                                            <td><?= $nl->nilai; ?></td>
                                            <td><?php if ($nl->nilai >= 3.60) {
                                                        echo 'A';
                                                    } elseif ($nl->nilai >= 3.00 && $nl->nilai >= 3.59) {
                                                        echo 'B';
                                                    } elseif ($nl->nilai >= 2.40 && $nl->nilai >= 2.99) {
                                                        echo 'C';
                                                    } else {
                                                        echo 'D';
                                                    }

                                                    ?>
                                            </td>
                                            <td><?= $nl->smester; ?></td>
                                            <td><?= $nl->tahun_ajaran; ?></td>
                                            <td>
                                                <a href="<?= base_url('edit-nilai/' . $nl->id_nilai) ?>"
                                                    class="badge progress-bar-primary">Edit</a>
                                                <a href="<?= base_url('nilai/Nilai/delete_nilai/' . $nl->id_nilai); ?>"
                                                    class="badge progress-bar-danger"
                                                    onclick="return confirm('Yakin..?');">Hapus</a>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>