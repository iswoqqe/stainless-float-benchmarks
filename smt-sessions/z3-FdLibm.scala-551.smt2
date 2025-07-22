; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2921 () Bool)

(assert start!2921)

(declare-fun b_free!19 () Bool)

(declare-fun b_next!19 () Bool)

(assert (=> start!2921 (= b_free!19 (not b_next!19))))

(declare-fun tp!29 () Bool)

(declare-fun b_and!69 () Bool)

(assert (=> start!2921 (= tp!29 b_and!69)))

(declare-fun b!15931 () Bool)

(declare-fun res!12519 () Bool)

(declare-fun e!9011 () Bool)

(assert (=> b!15931 (=> (not res!12519) (not e!9011))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1355 0))(
  ( (array!1356 (arr!596 (Array (_ BitVec 32) (_ BitVec 32))) (size!596 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1355)

(declare-fun dynLambda!47 (Int (_ BitVec 32)) Bool)

(assert (=> b!15931 (= res!12519 (dynLambda!47 P!6 (select (arr!596 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!15932 () Bool)

(declare-fun res!12523 () Bool)

(assert (=> b!15932 (=> (not res!12523) (not e!9011))))

(assert (=> b!15932 (= res!12523 (dynLambda!47 P!6 (select (arr!596 a!13) #b00000000000000000000000000000001)))))

(declare-fun res!12524 () Bool)

(assert (=> start!2921 (=> (not res!12524) (not e!9011))))

(assert (=> start!2921 (= res!12524 (= (size!596 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2921 e!9011))

(declare-fun array_inv!544 (array!1355) Bool)

(assert (=> start!2921 (array_inv!544 a!13)))

(assert (=> start!2921 tp!29))

(declare-fun b!15933 () Bool)

(declare-fun res!12525 () Bool)

(assert (=> b!15933 (=> (not res!12525) (not e!9011))))

(assert (=> b!15933 (= res!12525 (dynLambda!47 P!6 (select (arr!596 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!15934 () Bool)

(assert (=> b!15934 (= e!9011 (bvsge #b00000000000000000000000000000110 (size!596 a!13)))))

(declare-fun b!15935 () Bool)

(declare-fun res!12521 () Bool)

(assert (=> b!15935 (=> (not res!12521) (not e!9011))))

(assert (=> b!15935 (= res!12521 (dynLambda!47 P!6 (select (arr!596 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!15936 () Bool)

(declare-fun res!12520 () Bool)

(assert (=> b!15936 (=> (not res!12520) (not e!9011))))

(assert (=> b!15936 (= res!12520 (dynLambda!47 P!6 (select (arr!596 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!15937 () Bool)

(declare-fun res!12522 () Bool)

(assert (=> b!15937 (=> (not res!12522) (not e!9011))))

(assert (=> b!15937 (= res!12522 (dynLambda!47 P!6 (select (arr!596 a!13) #b00000000000000000000000000000100)))))

(assert (= (and start!2921 res!12524) b!15933))

(assert (= (and b!15933 res!12525) b!15932))

(assert (= (and b!15932 res!12523) b!15936))

(assert (= (and b!15936 res!12520) b!15931))

(assert (= (and b!15931 res!12519) b!15937))

(assert (= (and b!15937 res!12522) b!15935))

(assert (= (and b!15935 res!12521) b!15934))

(declare-fun b_lambda!5351 () Bool)

(assert (=> (not b_lambda!5351) (not b!15933)))

(declare-fun t!241 () Bool)

(declare-fun tb!51 () Bool)

(assert (=> (and start!2921 (= P!6 P!6) t!241) tb!51))

(declare-fun result!51 () Bool)

(assert (=> tb!51 (= result!51 true)))

(assert (=> b!15933 t!241))

(declare-fun b_and!71 () Bool)

(assert (= b_and!69 (and (=> t!241 result!51) b_and!71)))

(declare-fun b_lambda!5353 () Bool)

(assert (=> (not b_lambda!5353) (not b!15936)))

(declare-fun t!243 () Bool)

(declare-fun tb!53 () Bool)

(assert (=> (and start!2921 (= P!6 P!6) t!243) tb!53))

(declare-fun result!53 () Bool)

(assert (=> tb!53 (= result!53 true)))

(assert (=> b!15936 t!243))

(declare-fun b_and!73 () Bool)

(assert (= b_and!71 (and (=> t!243 result!53) b_and!73)))

(declare-fun b_lambda!5355 () Bool)

(assert (=> (not b_lambda!5355) (not b!15935)))

(declare-fun t!245 () Bool)

(declare-fun tb!55 () Bool)

(assert (=> (and start!2921 (= P!6 P!6) t!245) tb!55))

(declare-fun result!55 () Bool)

(assert (=> tb!55 (= result!55 true)))

(assert (=> b!15935 t!245))

(declare-fun b_and!75 () Bool)

(assert (= b_and!73 (and (=> t!245 result!55) b_and!75)))

(declare-fun b_lambda!5357 () Bool)

(assert (=> (not b_lambda!5357) (not b!15931)))

(declare-fun t!247 () Bool)

(declare-fun tb!57 () Bool)

(assert (=> (and start!2921 (= P!6 P!6) t!247) tb!57))

(declare-fun result!57 () Bool)

(assert (=> tb!57 (= result!57 true)))

(assert (=> b!15931 t!247))

(declare-fun b_and!77 () Bool)

(assert (= b_and!75 (and (=> t!247 result!57) b_and!77)))

(declare-fun b_lambda!5359 () Bool)

(assert (=> (not b_lambda!5359) (not b!15932)))

(declare-fun t!249 () Bool)

(declare-fun tb!59 () Bool)

(assert (=> (and start!2921 (= P!6 P!6) t!249) tb!59))

(declare-fun result!59 () Bool)

(assert (=> tb!59 (= result!59 true)))

(assert (=> b!15932 t!249))

(declare-fun b_and!79 () Bool)

(assert (= b_and!77 (and (=> t!249 result!59) b_and!79)))

(declare-fun b_lambda!5361 () Bool)

(assert (=> (not b_lambda!5361) (not b!15937)))

(declare-fun t!251 () Bool)

(declare-fun tb!61 () Bool)

(assert (=> (and start!2921 (= P!6 P!6) t!251) tb!61))

(declare-fun result!61 () Bool)

(assert (=> tb!61 (= result!61 true)))

(assert (=> b!15937 t!251))

(declare-fun b_and!81 () Bool)

(assert (= b_and!79 (and (=> t!251 result!61) b_and!81)))

(declare-fun m!22267 () Bool)

(assert (=> b!15937 m!22267))

(assert (=> b!15937 m!22267))

(declare-fun m!22269 () Bool)

(assert (=> b!15937 m!22269))

(declare-fun m!22271 () Bool)

(assert (=> b!15931 m!22271))

(assert (=> b!15931 m!22271))

(declare-fun m!22273 () Bool)

(assert (=> b!15931 m!22273))

(declare-fun m!22275 () Bool)

(assert (=> b!15933 m!22275))

(assert (=> b!15933 m!22275))

(declare-fun m!22277 () Bool)

(assert (=> b!15933 m!22277))

(declare-fun m!22279 () Bool)

(assert (=> b!15935 m!22279))

(assert (=> b!15935 m!22279))

(declare-fun m!22281 () Bool)

(assert (=> b!15935 m!22281))

(declare-fun m!22283 () Bool)

(assert (=> start!2921 m!22283))

(declare-fun m!22285 () Bool)

(assert (=> b!15936 m!22285))

(assert (=> b!15936 m!22285))

(declare-fun m!22287 () Bool)

(assert (=> b!15936 m!22287))

(declare-fun m!22289 () Bool)

(assert (=> b!15932 m!22289))

(assert (=> b!15932 m!22289))

(declare-fun m!22291 () Bool)

(assert (=> b!15932 m!22291))

(check-sat (not b_lambda!5353) (not b_next!19) (not start!2921) (not b_lambda!5351) (not b_lambda!5361) (not b_lambda!5357) b_and!81 (not b_lambda!5355) (not b_lambda!5359))
(check-sat b_and!81 (not b_next!19))
