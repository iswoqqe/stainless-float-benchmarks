; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2917 () Bool)

(assert start!2917)

(declare-fun b_free!15 () Bool)

(declare-fun b_next!15 () Bool)

(assert (=> start!2917 (= b_free!15 (not b_next!15))))

(declare-fun tp!23 () Bool)

(declare-fun b_and!47 () Bool)

(assert (=> start!2917 (= tp!23 b_and!47)))

(declare-fun b!15894 () Bool)

(declare-fun res!12483 () Bool)

(declare-fun e!8998 () Bool)

(assert (=> b!15894 (=> (not res!12483) (not e!8998))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1351 0))(
  ( (array!1352 (arr!594 (Array (_ BitVec 32) (_ BitVec 32))) (size!594 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1351)

(declare-fun dynLambda!45 (Int (_ BitVec 32)) Bool)

(assert (=> b!15894 (= res!12483 (dynLambda!45 P!6 (select (arr!594 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!15895 () Bool)

(declare-fun res!12482 () Bool)

(assert (=> b!15895 (=> (not res!12482) (not e!8998))))

(assert (=> b!15895 (= res!12482 (dynLambda!45 P!6 (select (arr!594 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!15896 () Bool)

(assert (=> b!15896 (= e!8998 (bvsge #b00000000000000000000000000000100 (size!594 a!13)))))

(declare-fun b!15897 () Bool)

(declare-fun res!12485 () Bool)

(assert (=> b!15897 (=> (not res!12485) (not e!8998))))

(assert (=> b!15897 (= res!12485 (dynLambda!45 P!6 (select (arr!594 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!15898 () Bool)

(declare-fun res!12486 () Bool)

(assert (=> b!15898 (=> (not res!12486) (not e!8998))))

(assert (=> b!15898 (= res!12486 (dynLambda!45 P!6 (select (arr!594 a!13) #b00000000000000000000000000000001)))))

(declare-fun res!12484 () Bool)

(assert (=> start!2917 (=> (not res!12484) (not e!8998))))

(assert (=> start!2917 (= res!12484 (= (size!594 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2917 e!8998))

(declare-fun array_inv!542 (array!1351) Bool)

(assert (=> start!2917 (array_inv!542 a!13)))

(assert (=> start!2917 tp!23))

(assert (= (and start!2917 res!12484) b!15895))

(assert (= (and b!15895 res!12482) b!15898))

(assert (= (and b!15898 res!12486) b!15894))

(assert (= (and b!15894 res!12483) b!15897))

(assert (= (and b!15897 res!12485) b!15896))

(declare-fun b_lambda!5333 () Bool)

(assert (=> (not b_lambda!5333) (not b!15894)))

(declare-fun t!223 () Bool)

(declare-fun tb!33 () Bool)

(assert (=> (and start!2917 (= P!6 P!6) t!223) tb!33))

(declare-fun result!33 () Bool)

(assert (=> tb!33 (= result!33 true)))

(assert (=> b!15894 t!223))

(declare-fun b_and!49 () Bool)

(assert (= b_and!47 (and (=> t!223 result!33) b_and!49)))

(declare-fun b_lambda!5335 () Bool)

(assert (=> (not b_lambda!5335) (not b!15895)))

(declare-fun t!225 () Bool)

(declare-fun tb!35 () Bool)

(assert (=> (and start!2917 (= P!6 P!6) t!225) tb!35))

(declare-fun result!35 () Bool)

(assert (=> tb!35 (= result!35 true)))

(assert (=> b!15895 t!225))

(declare-fun b_and!51 () Bool)

(assert (= b_and!49 (and (=> t!225 result!35) b_and!51)))

(declare-fun b_lambda!5337 () Bool)

(assert (=> (not b_lambda!5337) (not b!15897)))

(declare-fun t!227 () Bool)

(declare-fun tb!37 () Bool)

(assert (=> (and start!2917 (= P!6 P!6) t!227) tb!37))

(declare-fun result!37 () Bool)

(assert (=> tb!37 (= result!37 true)))

(assert (=> b!15897 t!227))

(declare-fun b_and!53 () Bool)

(assert (= b_and!51 (and (=> t!227 result!37) b_and!53)))

(declare-fun b_lambda!5339 () Bool)

(assert (=> (not b_lambda!5339) (not b!15898)))

(declare-fun t!229 () Bool)

(declare-fun tb!39 () Bool)

(assert (=> (and start!2917 (= P!6 P!6) t!229) tb!39))

(declare-fun result!39 () Bool)

(assert (=> tb!39 (= result!39 true)))

(assert (=> b!15898 t!229))

(declare-fun b_and!55 () Bool)

(assert (= b_and!53 (and (=> t!229 result!39) b_and!55)))

(declare-fun m!22227 () Bool)

(assert (=> start!2917 m!22227))

(declare-fun m!22229 () Bool)

(assert (=> b!15897 m!22229))

(assert (=> b!15897 m!22229))

(declare-fun m!22231 () Bool)

(assert (=> b!15897 m!22231))

(declare-fun m!22233 () Bool)

(assert (=> b!15895 m!22233))

(assert (=> b!15895 m!22233))

(declare-fun m!22235 () Bool)

(assert (=> b!15895 m!22235))

(declare-fun m!22237 () Bool)

(assert (=> b!15898 m!22237))

(assert (=> b!15898 m!22237))

(declare-fun m!22239 () Bool)

(assert (=> b!15898 m!22239))

(declare-fun m!22241 () Bool)

(assert (=> b!15894 m!22241))

(assert (=> b!15894 m!22241))

(declare-fun m!22243 () Bool)

(assert (=> b!15894 m!22243))

(check-sat (not start!2917) (not b_lambda!5335) b_and!55 (not b_lambda!5333) (not b_lambda!5337) (not b_lambda!5339) (not b_next!15))
(check-sat b_and!55 (not b_next!15))
