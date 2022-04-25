<!-- Left side column. contains the logo and sidebar -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <p style="font-weight: bold">SISTEM EVALUASI KINERJA DOSEN
                        UNIVERSITAS MALIKUSSALEH </p>
                    <h3 style="font-family:Time New Roman; font-size:22px;">Selamat Datang
                        <?php
                        if ($user_session['level'] == "admin") {
                            echo $user_session['username'], '<br> Anda Adalah Admin';
                        } elseif ($user_session['level'] == "BPM") {
                            echo $user_session['username'], '<br>Anda Adalah BPM';
                        } elseif ($user_session['level'] == "prodi") {
                            echo '<br>Anda Adalah Kepala Prodi ', $user_prodi['nama_prodi']; ?>
                            <!-- <a href="<?= base_url('nilai-prd') ?>" type="button" class="btn btn-primary"><?= $total_nilai_prodi; ?>
                                Data penilaian <i class="fa fa-arrow-right"></i></a>
                            <a href="<?= base_url('rekapitulasi-prodi') ?>" type="button" class="btn btn-success">
                                Laporan <i class="fa fa-arrow-right"></i></a><br> -->
                        <?php } elseif ($user_session['level'] == "dosen") {
                            echo $user_dosen['nama_dosen'], '<br><p>Anda seorang Dosen Prodi ', $user_dosen['nama_prodi'], '</p>';
                        } elseif ($user_session['level'] == "mahasiswa") {
                            echo $user_mahasiswa['nama_mahasiswa'], '<br><p>Anda seorang Mahasiswa Prodi ', $user_mahasiswa['nama_prodi'], '</p><br>'; ?>
                            <!-- <a href="<?= base_url('nilai') ?>" type="button" class="btn btn-primary"><?= $total_nilai_mahasiswa ?>
                                Dosen ternilai <i class="fa fa-arrow-right"></i></a> -->
                            <a href="<?= base_url('penilaian-dosen') ?>" type="button" class="btn btn-success">
                                Mulai Penilaian <i class="fa fa-arrow-right"></i></a>
                        <?php } else
                            echo 'Tidak terdaftar';
                        ?>

                        <?php $tahun1 = date('Y') -1;
                        $tahun2 = date('Y') ; ?><br>
                        Sekarang Tahun Ajaran : <?= $tahun1, ' / ', $tahun2 ?>
                    </h3>

                </div>
                <div class="container">
                    <?php if ($user_session['level'] == "prodi") { ?>
                        <h4 style="font-family:Time New Roman">Nilai Dosen Untuk Semester Genap per Matakuliah Tahun Ajaran <?php echo date('Y') - 1, ' / ', date('Y') ?></h4>
                        <?php foreach ($matakuliah_prodi as $mk) : ?>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><?= $mk->nama_matakuliah ?></span>
                                        <span class="info-box-number">
                                            <?php
                                            //$kd_prodi = $this->session->userdata('kd_prodi');
                                            // $kd_prodi =  $user_prodi['nama_prodi'];
                                            $this->db->from('nilai');
                                            $this->db->join('dosen', 'dosen.NIDN = nilai.NIDN', 'left');


                                            $this->db->where('kd_prodi', $user_prodi['kd_prodi']);
                                            $this->db->where('kd_matakuliah', $mk->kd_matakuliah);
                                            $this->db->where('smester', 'Genap');
                                            $hsl = $this->db->count_all_results();

                                            $this->db->from('dosen');
                                            $this->db->where('kd_prodi', $user_prodi['kd_prodi']);
                                            $dos = $this->db->count_all_results();

                                            //$per = $hsl / $dos * 100;
                                            $per=round($hsl / $dos * 100,1);
                                            ?>

                                            <?php echo '<small>', $per, '%' ?>
                                            <?php if ($per != 0) { ?>
                                                Sudah Ternilai
                                            <?php } else {
                                                echo 'ternilai';
                                            } ?> </small><br>
                                            <small><a href="<?= base_url('detail_genap/' . $mk->kd_matakuliah) ?>" class="badge progress-bar-primary">Detail</a></small>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>

                </div>
                <div class="container">
                    <h4 style="font-family:Time New Roman">Nilai Dosen Untuk Semester Ganjil per Matakuliah Tahun Ajaran <?php echo date('Y') - 1, ' / ', date('Y') ?></h4>
                    <?php foreach ($matakuliah_prodi as $mk) : ?>
                        <div class="col-md-3">
                            <div class="info-box">
                                <span class="info-box-icon bg-green"><i class="ion ion-ios-gear-outline"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text"><?= $mk->nama_matakuliah ?></span>
                                    <span class="info-box-number">
                                        <?php

                                        $this->db->from('nilai');
                                        $this->db->join('dosen', 'dosen.NIDN = nilai.NIDN', 'left');
                                        $this->db->where('kd_prodi', $user_prodi['kd_prodi']);
                                        $this->db->where('kd_matakuliah', $mk->kd_matakuliah);
                                        //$this->db->group_by('nilai.kd_matakuliah');
                                        $this->db->where('smester', 'Ganjil');
                                        $hsl_ganjil = $this->db->count_all_results();

                                        $this->db->from('dosen');
                                        $this->db->where('kd_prodi', $user_prodi['kd_prodi']);
                                        $dosen = $this->db->count_all_results();

                                        //$persen = $hsl_ganjil / $dosen * 100;
                                        $persen=round($hsl_ganjil / $dosen * 100,1);
                                        ?>


                                        <?php echo '<small>', $persen, '%' ?>
                                        <?php if ($persen != 0) { ?>
                                            Sudah Ternilai
                                        <?php } else {
                                            echo 'ternilai';
                                        } ?> </small><br>
                                        <small><a href="<?= base_url('detail_ganjil/' . $mk->kd_matakuliah) ?>" class="badge progress-bar-primary">Detail</a></small>

                                    </span>
                                </div>
                            </div>
                        </div>
                <?php
                        endforeach;
                    } ?>

                </div>


                <div class="container">
                    <?php if ($user_session['level'] == "mahasiswa") { ?>
                        <h4 style="font-family:Time New Roman">Nilai Dosen Untuk Semester Genap per Matakuliah Tahun Ajaran <?php echo date('Y') - 1, ' / ', date('Y') ?></h4>
                        <?php foreach ($matakuliah_prodi as $mk) : ?>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><?= $mk->nama_matakuliah ?></span>
                                        <span class="info-box-number">
                                            <?php
                                            //$kd_prodi = $this->session->userdata('kd_prodi');
                                            // $kd_prodi =  $user_prodi['nama_prodi'];
                                            $this->db->from('nilai');
                                            $this->db->join('dosen', 'dosen.NIDN = nilai.NIDN', 'left');


                                            $this->db->where('NPM', $user_mahasiswa['NPM']);
                                            $this->db->where('kd_matakuliah', $mk->kd_matakuliah);
                                            $this->db->where('smester', 'Genap');
                                            $hsl = $this->db->count_all_results();

                                            // $this->db->from('dosen');                                      
                                            // $this->db->where('kd_prodi', $user_prodi['kd_prodi']);
                                            // $dos = $this->db->count_all_results();
                                            // //echo $hsl;

                                            // $per = $hsl / $dos * 100;
                                            ?>

                                            <?php echo '<small>', $hsl, ' ' ?>
                                            <?php if ($hsl != 0) { ?>
                                                Sudah Anda Nilai
                                            <?php } else {
                                                echo 'ternilai';
                                            } ?> </small><br>
                                            <small><a href="<?= base_url('detail_genap_mhs/' . $mk->kd_matakuliah) ?>" class="badge progress-bar-primary">Detail</a></small>
                                        </span>
                                    </div>
                                </div>
                            </div>
                    <?php endforeach;
                    } ?>

                </div>


                <div class="container">
                    <?php if ($user_session['level'] == "mahasiswa") { ?>
                        <h4 style="font-family:Time New Roman">Nilai Dosen Untuk Semester Ganjil per Matakuliah Tahun Ajaran <?php echo date('Y') - 1, ' / ', date('Y') ?></h4>
                        <?php foreach ($matakuliah_prodi as $mk) : ?>
                            <div class="col-md-3">
                                <div class="info-box">
                                    <span class="info-box-icon bg-red"><i class="ion ion-ios-gear-outline"></i></span>
                                    <div class="info-box-content">
                                        <span class="info-box-text"><?= $mk->nama_matakuliah ?></span>
                                        <span class="info-box-number">
                                            <?php
                                            //$kd_prodi = $this->session->userdata('kd_prodi');
                                            // $kd_prodi =  $user_prodi['nama_prodi'];
                                            $this->db->from('nilai');
                                            $this->db->join('dosen', 'dosen.NIDN = nilai.NIDN', 'left');


                                            $this->db->where('NPM', $user_mahasiswa['NPM']);
                                            $this->db->where('kd_matakuliah', $mk->kd_matakuliah);
                                            $this->db->where('smester', 'Ganjil');
                                            $hsl_gjl = $this->db->count_all_results();

                                            // $this->db->from('dosen');                                      
                                            // $this->db->where('kd_prodi', $user_prodi['kd_prodi']);
                                            // $dos = $this->db->count_all_results();
                                            // //echo $hsl;

                                            // $per = $hsl / $dos * 100;
                                            ?>

                                            <?php echo '<small>', $hsl_gjl, ' ' ?>
                                            <?php if ($hsl_gjl != 0) { ?>
                                                Sudah Anda nilai
                                            <?php } else {
                                                echo 'ternilai';
                                            } ?> </small><br>
                                            <small><a href="<?= base_url('detail_ganjil_mhs/' . $mk->kd_matakuliah) ?>" class="badge progress-bar-primary">Detail</a></small>
                                        </span>
                                    </div>
                                </div>
                            </div>
                    <?php endforeach;
                    } ?>

                </div>

                

            </div>
        </div>

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- ./wrapper -->