                                for _ in range(rows_to_add):
                                    new_tr = deepcopy(tr_to_clone)
                                    tbl.append(new_tr)
                                    # Clear the text in the cloned row's cells
                                    for tc in new_tr.tc_lst:
                                        # Access the text frame and clear it
                                        text_frame = tc.txBody
                                        if text_frame is not None:
                                            # Clear all paragraphs
                                            for p in text_frame.p_lst:
                                                # Clear all runs in the paragraph
                                                for r in p.r_lst:
                                                    if hasattr(r, 't'):
                                                        r.t = ""



                                        table._tbl.remove(table.rows[i]._tr)
                                    except Exception as e:
                                        st.warning(f"Could not remove row {i}: {str(e)}")
                            
